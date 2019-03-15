class Changeaddresstofulladdress < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :address, :full_address
  end
end
