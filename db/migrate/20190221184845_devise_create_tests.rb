# frozen_string_literal: true

class DeviseCreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.timestamps null: false
    end

    add_index :tests, :email,                unique: true
  end
end
