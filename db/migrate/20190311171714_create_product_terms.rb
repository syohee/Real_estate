class CreateProductTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :product_terms do |t|
      t.references :product, foreign_key: true
      t.references :term, foreign_key: true
      t.timestamps
    end
  end
end
