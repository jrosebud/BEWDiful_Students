class TextsController < ApplicationController
  def index
  end

  def new
  end
  
  def create
    Person.send_mass_message(params[:text][:message])
    
    redirect_to texts_path, notice: "Your text was sent to #{Person.count} #{"person".pluralize(Person.count)}!"
  end
end
