class DropUserTermsList < ActiveRecord::Migration[5.1]
  def change
    drop_table :user_terms_lists
  end
end
