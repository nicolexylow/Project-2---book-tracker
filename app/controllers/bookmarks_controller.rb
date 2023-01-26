class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def add 
    bookmark = Bookmark.find params[:bookmark]

    # add the book information to the books table with links to the bookmark_id
    # associate the bookmark to the book?
    book = Book.create :name => params[:title], :image => params[:image], :author => params[:author], :published => params[:published], :pages => params[:pages], :language => params[:language]
    bookmark.books << book
    redirect_to bookmarks_path
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
    @bookmark = Bookmark.find params[:id]
  end

  def update
    bookmark = Bookmark.find params[:id]
    bookmark.update bookmark_params
    redirect_to bookmark
  end

  def show
    @bookmark = Bookmark.find params[:id]
  end

  def destroy
    bookmark = Bookmark.find params[:id]
    bookmark.destroy
    redirect_to bookmarks_path 
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:name, :image)
  end
end
