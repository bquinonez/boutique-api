class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user, :address
end
