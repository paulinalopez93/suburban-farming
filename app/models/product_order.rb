class ProductOrder < ApplicationRecord
  belongs_to :order
  belongs_to :productmonetize, :price_cents
  monetize :price_cents
end
