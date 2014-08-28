module SessionsHelper

	def sign_in(victim)
		remember_token = Victim.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		victim.update_attribute(:remember_token, Victim.digest(remember_token))
		self.current_victim = victim
	end
	
	def signed_in_victim
		unless sign_in?
		redirect_to root_url, notice: "Please sign in."	
		end
	end
	
	def signed_in?
		!current_victim.nil?
	end	

	def current_victim=(victim)
		@current_victim = victim
	end

	def current_victim
		remember_token = Victim.digest(cookies[:remember_token])
		@current_victim ||= Victim.find_by(remember_token: remember_token)
	end
	
	def correct_victim
		@victim = Victim.find(params[:id])
		redirect_to(root_url) unless current_victim?(@victim)	
	end

	def current_victim?(victim)
		victim == current_victim
	end
	
	def sign_out
		current_victim.update_attribute(:remember_token, Victim.digest(Victim.new_remember_token))
		cookies.delete(:remember_token)
		self.current_victim = nil
	end		


end
