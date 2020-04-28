class Partnership < ApplicationRecord
    belongs_to :userProduct
    has_many :users, through: :userProducts
end
