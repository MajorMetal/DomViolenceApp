class VictimsController < ApplicationController
  before_action :find_victim, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  before_action :signed_in_victim, except: [:new, :create]
  before_action :correct_victim, except: [:new, :create] 
	
def index
		@victims = Victim.all
end

def new
=======
  # before_action :signed_in_victim, except: [:new, :create]
  # before_action :correct_victim, except: [:new, :create] 
	
  
  def index
		@victims = Victim.all
	end


  def new
>>>>>>> 497f463956202e4fa4dc1fcf1a43d2d494bf6120
    if current_victim
      redirect_to current_victim
    else 
      @victim = Victim.new
    end
<<<<<<< HEAD
end


 
=======
  end


  def create
    @victim = Victim.new(victim_params)

    if @victim.save
    sign_in @victim
     @victim = Victim.all
      redirect_to @victim
    else
      render action: 'new'
    end
  end


  def edit
    @victim = Victim.find(params[:id])
  end


  def update
      respond_to do |format|
        if @victim.update(victim_params)
          format.html { redirect_to @victim, notice: 'Victim was successfully updated.' }
          format.json { render :show, status: :ok, location: @victim }
        else
          format.html { render :edit }
          format.json { render json: @victim.errors, status: :unprocessable_entity }
        end
      end
  end


  def show
      @victim = Victim.find(params[:id])
  end



  def destroy
    @s = Victim.find(params[:id])
    @victim.destroy
    redirect_to shelter_path
  end



private
    def victim_params
      params.require(:victim).permit(:name, :email, :password, :password_confirmation)
    end

    def find_victim
      @victim = Victim.find(params[:id])
    end

    def correct_victim
      find_victim
      redirect_to(current_victim) unless current_victim?(@victim)
    end

>>>>>>> 497f463956202e4fa4dc1fcf1a43d2d494bf6120

end



