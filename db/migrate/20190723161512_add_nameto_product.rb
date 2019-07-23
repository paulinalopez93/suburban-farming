class AddNametoProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :name, :string
  end
end
