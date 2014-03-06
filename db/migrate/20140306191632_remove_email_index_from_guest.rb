class RemoveEmailIndexFromGuest < ActiveRecord::Migration
  def up
    remove_index :guests, :email
    add_index :guests, :email
  end

  def down
    remove_index :guests, :email
    add_index :guests, :email, unique: true
  end
end
