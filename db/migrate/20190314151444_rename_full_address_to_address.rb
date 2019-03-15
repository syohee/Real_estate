class RenameFullAddressToAddress < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :full_address, :address
  end
end
