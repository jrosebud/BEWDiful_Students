require "SecureRandom"

class LinksController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def index
    @links = Link.all
  end
  
  def new
    @link = Link.new
  end
  
  def create
    @link = Link.new link_params
    @link.hash_code = random_hash
    @link.save
    
    if @link.save 
      redirect_to @link
    else
      render :new
    end
  end
  
  def show
    @link = Link.find params[:id]
  end
  
  def link_redirect
    @link = Link.find params[:hash]
    if @link
      redirect_to @link.url
    else
      redirect_to links_path
    end
  end
  
  def random_hash
    SecureRandom.hex(3)
  end
  
  def link_params
    params.require(:link).permit(:url)
  end
  
end