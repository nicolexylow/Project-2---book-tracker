class CreateBookmarksBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks_books, :id => false do |t|
      t.integer :bookmark_id
      t.integer :book_id
    end
  end
end
