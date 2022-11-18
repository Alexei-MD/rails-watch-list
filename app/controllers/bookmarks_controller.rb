class BookmarksController < ApplicationController
  before_action :set_movie, only: %i[new create]

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.movie = @movie
    @bookmark.save
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
