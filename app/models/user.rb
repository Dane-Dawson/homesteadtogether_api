class User < ApplicationRecord
    has_secure_password

    validates_presence_of :email
    validates_uniqueness_of :email

    has_many :userProducts
    # has_many :partnerships, through: :userProducts
    has_many :messages
    has_many :conversations, through: :messages
end
