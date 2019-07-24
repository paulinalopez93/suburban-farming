class ChangePriceToPriceCentsItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :price
    remove_column :product_orders, :price
    add_monetize :products, :price, currency: { present: false }
    add_monetize :product_orders, :price, currency: { present: false }

  end
end
