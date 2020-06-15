class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :cart_id, :item_id, :quantity, :item
  belongs_to :cart
  belongs_to :item
end


# attributes :id, :quantity
# has_one :cart
# has_one :item
