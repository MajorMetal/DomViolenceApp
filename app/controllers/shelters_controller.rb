class SheltersController < ApplicationController
 
 def index
		@shelters = Shelter.all
	end


def new
    @shelter = Shelter.new
 end


 def create
    @shelter = Shelter.new(shelter_params)

    if @shelter.save
      @shelters = Shelter.all
      render action: 'index'
    else
      render action: 'new'
    end
  end


def show
    @shelter = Shelter.find(params[:id])
  end


def edit
    @shelter = Shelter.find(params[:id])
  end


 def update
    @shelter = Shelter.find(params[:id])
    if @shelter.update_attributes(shelter_params)
      redirect_to(@shelter)
    else
      render action: 'edit'
    end
  end

  def destroy
    @shelter = Shelter.find(params[:id])
    @shelter.destroy
    redirect_to shelters_path
  end






	private
   		def shelter_params
    	params.require(:shelter).permit(:name, :city, :zip, :contact_phone, :contact_email)
        end

end




