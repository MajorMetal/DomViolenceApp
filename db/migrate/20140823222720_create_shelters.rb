class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :city
      t.integer :zip
      t.string :contact_phone
      t.string :contact_email

      t.timestamps
    end
  end
end
