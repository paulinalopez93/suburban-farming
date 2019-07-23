class ProductOrder < ApplicationRecord
  belongs_to :order
  belongs_to :product
  has_many :products
  has_many :orders
end
