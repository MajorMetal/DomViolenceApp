class AddEmailToVictims < ActiveRecord::Migration
  def change
    add_column :victims, :email, :string
  end
end
