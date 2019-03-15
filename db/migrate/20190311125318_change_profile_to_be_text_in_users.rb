class ChangeProfileToBeTextInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :profile, :text
  end
end
