class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :deposit
      t.integer :reward
      t.integer :area
      t.references :structure, foreign_key: true
      t.references :type, foreign_key: true
      t.string :address
      t.references :office, foreign_key: true
      t.integer :m_fees
      t.integer :rent
      t.string :floor
      t.integer :latitude
      t.integer :longitude
      t.timestamps
    end
  end
end
