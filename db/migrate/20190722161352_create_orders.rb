class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :date
      t.boolean :paid
      t.integer :total_price
      t.string :city
      t.string :street
      t.string :street_number
      t.string :zip_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
