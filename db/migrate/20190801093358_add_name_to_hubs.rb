class AddNameToHubs < ActiveRecord::Migration[5.2]
  def change
    add_column :hubs, :name, :string
  end
end
