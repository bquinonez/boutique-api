class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :item_id, :username
  # has_one :user
  # has_one :item
  def username
    self.object.user.username
  end
end
