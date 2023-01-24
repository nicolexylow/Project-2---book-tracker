class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.create bookmark_params
    @current_user.bookmarks << bookmark
    redirect_to bookmarks_path
  end 

  def edit
  end

  def show
    @bookmark = Bookmark.find params[:id]
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:name, :image)
  end
end
