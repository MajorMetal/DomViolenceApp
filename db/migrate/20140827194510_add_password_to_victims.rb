class AddPasswordToVictims < ActiveRecord::Migration
  def change
    add_column :victims, :password_digest, :text
    add_column :victims, :remember_token, :string

      end
end
