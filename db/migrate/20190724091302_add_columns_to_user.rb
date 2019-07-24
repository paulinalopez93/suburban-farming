class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :supplier, :boolean, default: false
    add_column :users, :city, :string
    add_column :users, :street, :string
    add_column :users, :street_number, :string
    add_column :users, :zip_code, :string
  end
end
