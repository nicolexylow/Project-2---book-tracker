class User < ApplicationRecord
    has_many :bookmarks
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
end
