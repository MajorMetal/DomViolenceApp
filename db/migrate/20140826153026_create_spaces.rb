class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.integer :bed
      t.datetime :created_at
      t.datetime :updated

      t.timestamps
    end
  end
end
