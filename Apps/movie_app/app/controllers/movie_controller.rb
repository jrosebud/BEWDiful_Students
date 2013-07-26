class MovieController < ApplicationController
  def index
    @movie = Movie.new
    @movies = Movie.all
  end
  
  def search
    @movie = Movie.new
    @movies = Movie.search params[:movie][:title]
    @movies = Movie.search params[:movie][:description]
  end
end
