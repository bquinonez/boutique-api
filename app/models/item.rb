class Item < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items
  
  belongs_to :category
  
  has_many :cart_items
  has_many :carts, through: :cart_items
  
  has_many :reviews
  has_many :users, through: :reviews
  
  def to_h
    {:id => self.id,
    :name => self.name,
    :color => self.color,
    :gender => self.gender,
    :size => JSON.parse(self.size),
    :description => self.description,
    :image => self.image,
    :price => self.price,
    :designer => self.designer,
    :category_id => self.category_id,
    :category_name => self.category.name}
  end
  ## the purpose of this instance method is to convert an
  ##instance of an item to Hash! So that we can get access to
  ## the cart_item id in the User Serializer and merge it
end
