class AddCoordinatesToHubs < ActiveRecord::Migration[5.2]
  def change
    add_column :hubs, :latitude, :float
    add_column :hubs, :longitude, :float
  end
end
