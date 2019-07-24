class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :product_orders
  has_many :products, through: :product_orders
end
