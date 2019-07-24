class ChangePaidForOrder < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :paid, :boolean, default: false
  end
end
