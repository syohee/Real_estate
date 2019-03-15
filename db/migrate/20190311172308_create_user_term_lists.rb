class CreateUserTermLists < ActiveRecord::Migration[5.1]
  def change
    create_table :user_term_lists do |t|
      t.references :user_term, foreign_key: true
      t.references :term, foreign_key: true
      t.timestamps
    end
  end
end
