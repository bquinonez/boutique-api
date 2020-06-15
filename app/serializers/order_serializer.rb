class OrderSerializer < ActiveModel::Serializer
  attributes :id, :address, :order_items, :created_at
  has_many :items, through: :order_items
  has_many :order_items
  
  def order_items
    self.object.order_items.map do |order_item|
      order_item.item
    end
  end
end
