class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.integer :bed
      t.datetime :created_at
      t.datetime :updated

      t.timestamps
    end
  end
end
