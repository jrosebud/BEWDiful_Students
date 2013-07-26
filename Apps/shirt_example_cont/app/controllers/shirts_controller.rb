class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
  end
  
  def new
    @shirt = Shirt.new 
  end
  
  def create
    @shirt = Shirt.new shirt_params
     
    if @shirt.save 
      redirect_to shirts_path, flash: { success: "You added a shirt. Reward yourself with a beer." }
    else
      # this renders a different view. in this case, :new gets new.html.erb
      render :new
    end
    
  end
  
  def show
    @shirt = Shirt.find params[:id]
  end
  
  def edit
    @shirt = Shirt.find params[:id]
  end
    
  def update
    shirt = Shirt.find params[:id]
    shirt.update_attributes shirt_params
    
    redirect_to shirt_path(shirt)
  end
  
  def destroy
    Shirt.find(params[:id]).destroy
    
    redirect_to shirts_path, flash: { success: "Shirt was deleted." }
  end
    
  def shirt_params
    params.require(:shirt).permit(:color, :name, :description)
  end
  
end