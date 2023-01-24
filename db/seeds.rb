# USERS
User.destroy_all
u1 = User.create :name => 'Matthew', :email => 'matthew@ga.co', :password => 'chicken', :admin => true
u2 = User.create :name => 'Joanne', :email => 'joanne@ga.co', :password => 'chicken'
puts "#{User.count} users"

# BOOKMARKS
Bookmark.destroy_all
bm1 = Bookmark.create :name => 'Wishlist', :image => 'https://d3i6fh83elv35t.cloudfront.net/newshour/app/uploads/2015/11/GettyImages-459146393-1024x717.jpg'
bm2 = Bookmark.create :name => 'Emma', :image => 'https://i.pinimg.com/originals/98/f4/74/98f474c808c4b0d63db3460eaddc3e60.jpg'
puts "#{Bookmark.count} bookmarks"

# BOOKS
Book.destroy_all
b1 = Book.create :name => 'Eat That Frog!', :image => 'https://m.media-amazon.com/images/I/41fw4Cjip8L.jpg', author: 'Brian Tracy', :published => '2008-11-13', :pages => 144, :language => 'English'
b2 = Book.create :name => 'Harry Potter', :image => 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4088/9781408855676.jpg', author: 'J.K. Rowling', :published => '2015-12-14', :pages => 223, :language => 'English'
puts "#{Book.count} books"

# GENRES
Genre.destroy_all
g1 = Genre.create :name => 'Self-help'
g2 = Genre.create :name => 'Fantasy'
puts "#{Genre.count} genres"

# ASSOCITATIONS
puts "Users and bookmarks"
u1.bookmarks << bm1
u2.bookmarks << bm2

puts "Bookmarks and books"
bm1.books << b1
bm2.books << b2

puts "Books and genres"
b1.genres << g1
b2.genres << g2
