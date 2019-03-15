class Droptests < ActiveRecord::Migration[5.1]
  def up
    drop_table :tests
  end
end
