class UserProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :img_src, :tags, :active, :flagged, :flagged_message, :user_id, :product_id, :category, :origin
  
  def category
    category = self.object.product.category
    {
      id: category.id,
      name: category.name
    }
  end

  def origin
    origin = self.object.product.origin
    {
      id: origin.id,
      name: origin.name
    }
  end

  belongs_to :user
  belongs_to :product
  has_one :category, through: :product
    has_one :origin, through: :product
    has_many :partnerships
end
