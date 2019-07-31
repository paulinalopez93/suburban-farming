class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :product_orders
  has_many :products, through: :product_orders
  monetize :price_cents

  #ORDER CAN ONLY HAVE TWO OR THEE STATES VALIDATION
  validates :status, inclusion: { in: ["pending", "paid", "refused", "delivered"] }

  def delivery_price
    return Money.new(400, price.currency)
  end

  def subtotal_price
    return product_orders.reduce(0) { |sum, product_order| sum += product_order.total_price }
  end

  def total_price
    delivery_price + subtotal_price
  end
end
