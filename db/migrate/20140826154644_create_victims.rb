class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :name
      t.integer :children
      t.string :city
      t.integer :zip

      t.timestamps
    end
  end
end
