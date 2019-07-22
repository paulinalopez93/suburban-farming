class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :price
      t.text :details
      t.string :photo
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
