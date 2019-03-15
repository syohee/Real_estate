class ChangeProfileToBeTextInOffices < ActiveRecord::Migration[5.1]
  def change
    change_column :offices, :profile, :text
  end
end
