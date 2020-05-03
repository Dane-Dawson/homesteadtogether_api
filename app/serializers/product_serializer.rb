class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :category_id, :origin_id
  has_one :category
  has_one :origin
end
