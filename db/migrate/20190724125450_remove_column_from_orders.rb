class RemoveColumnFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :paid, :string
  end
end
