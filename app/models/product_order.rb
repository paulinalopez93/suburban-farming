class ProductOrder < ApplicationRecord
  belongs_to :order
  belongs_to :product
  monetize :price_cents

  def total_price
    return product.price * quantity
  end
end
