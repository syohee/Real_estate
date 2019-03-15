class ChangeDataTypeToProduct < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :latitude, :float
    change_column :products, :longitude, :float
  end
end
