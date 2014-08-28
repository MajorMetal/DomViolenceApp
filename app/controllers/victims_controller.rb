class VictimsController < ApplicationController
  before_action :find_victim, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_victim, except: [:new, :create]
  before_action :correct_victim, except: [:new, :create] 
	
def index
		@victims = Victim.all
end

def new
    if current_victim
      redirect_to current_victim
    else 
      @victim = Victim.new
    end
end


 

end
