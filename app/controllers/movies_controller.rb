class MoviesController < ApplicationController
  def index
    @movie = Movie.find(params[:format])
  end

  def show
    @movie = Movie.find(params[:id])
    @list = List.find(params[:list_id])
  end

  private

  def movies_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
