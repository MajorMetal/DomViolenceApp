class SessionsController < ApplicationController

	def new
		if signed_in?
			redirect_to current_victim
		end	
	end		

	def create
		victim = Victim.find_by(email: params[:session][:email].downcase)
		if victim && victim.authenticate(params[:session][:password])
			sign_in victim
			redirect_to victim
		else
			render 'new'
		end		
	end	
	
	def delete
		sign_out
		redirect_to root_url
	end	


end
