class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.integer :possible_aggregates,  default: 0
      t.integer :confirmed_aggregates, default: 0
      t.string :status
      t.string :code

      t.timestamps
    end

    add_index :guests, :email, unique: true
    add_index :guests, :code,  unique: true
  end
end
