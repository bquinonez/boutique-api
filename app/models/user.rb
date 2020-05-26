class User < ApplicationRecord
    has_secure_password
    has_one :cart, dependent: :destroy
    has_many :orders
    has_many :reviews, dependent: :destroy
    has_many :items, through: :reviews
end
