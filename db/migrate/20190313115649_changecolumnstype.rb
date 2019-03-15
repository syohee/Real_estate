class Changecolumnstype < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :area, :float
    change_column :products, :rent, :float
    change_column :products, :deposit, :string
    change_column :products, :reward, :string
  end
end
