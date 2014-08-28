class AddVictimRefToSignups < ActiveRecord::Migration
 
  def change
    add_reference :signups, :victim, index: true
    add_reference :signups, :shelter, index: true
   	remove_column :signups, :bed
   	remove_column :signups, :updated
end

end
