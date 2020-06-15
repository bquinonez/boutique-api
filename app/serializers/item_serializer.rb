class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :gender, :size, :description, :image, :price, :designer
  has_one :category
  has_many :reviews
  
  def category_name
    # byebug
    self.object.category.name
  end
  
  def size
    size = self.object.size
    return JSON.parse(size)
  end
  
end
