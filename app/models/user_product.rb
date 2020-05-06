class UserProduct < ApplicationRecord
    belongs_to :user
    belongs_to :product
    has_one :category, through: :product
    has_one :origin, through: :product
    # has_many :partnerships
end
