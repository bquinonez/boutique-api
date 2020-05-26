class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_one :cart
  has_many :orders
  has_many :reviews
end
