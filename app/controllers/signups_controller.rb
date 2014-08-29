class SignupsController < ApplicationController

def index
	@zshelters = Signup.all
end



def new
	@signup = Signup.new
	@shelter_id = params[:format]
	@victim_id = current_victim.id
end


def show
	@signup = Signup.new
end


def create
	@signup = Signup.new(signup_params)

	if @signup.save
		@signups = Signup.all
		redirect_to @signup
	else
		render 'new'
	end
end


private
	def signup_params
		params.require(:signup).permit(:shelter_id, :victim_id)
	end

end





