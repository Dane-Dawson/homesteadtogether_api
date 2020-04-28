class UserProduct < ApplicationRecord
    belongs_to :user
    belongs_to :product
    has_many :categories, through: :product
    has_many :origins, through: :product
    has_many :partnerships
end
