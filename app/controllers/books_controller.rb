class BooksController < ApplicationController
  def index
    request = "https://www.googleapis.com/books/v1/volumes?q=title:#{params[:title]}"
    info = HTTParty.get request

    @image = info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    @title = info["items"][0]["volumeInfo"]["title"]
    @published = info["items"][0]["volumeInfo"]["publishedDate"]
    @pages = info["items"][0]["volumeInfo"]["pageCount"]
    @language = info["items"][0]["volumeInfo"]["language"]
    
    author = info["items"][0]["volumeInfo"]["authors"]
    @author = ""
    author.each do |author|
        @author += "#{author}, "
    end
    @author = @author[0..-3]
  end

  def show
    @book = Book.find params[:id]
    @bookmark = Bookmark.find params[:bookmark_id] if params[:bookmark_id].present?
  end

  def destroy
    book = Book.find params[:id]
    book.destroy
    redirect_to bookmarks_path
  end
end
