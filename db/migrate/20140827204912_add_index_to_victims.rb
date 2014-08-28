class AddIndexToVictims < ActiveRecord::Migration
  def change
  	add_index :victims, :remember_token
  	add_index :victims, :email, unique: true
  end
end
