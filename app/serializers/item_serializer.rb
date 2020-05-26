class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :gender, :size, :description, :image, :price, :designer
  has_one :category
end
