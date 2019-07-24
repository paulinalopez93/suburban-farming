class AddAmountToOrders < ActiveRecord::Migration[5.2]
  def change
     add_monetize :orders, :price, currency: { present: false }
  end
end

