class ChangeCategoryToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :category, 'integer USING CAST(category AS integer)'
  end
end
