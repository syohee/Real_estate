# frozen_string_literal: true

class DeviseCreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.string :email,           null: false
      t.string :encrypted_password, null: false
      t.string :name, null: false
      t.string :profile
      t.timestamps
    end

    add_index :offices, :email, unique: true
  end
end
