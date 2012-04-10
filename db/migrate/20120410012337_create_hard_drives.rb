class CreateHardDrives < ActiveRecord::Migration
  def change
    create_table :hard_drives do |t|
      t.string :marca
      t.integer :tamano
      t.integer :cache
      t.string :rpm

      t.timestamps
    end
  end
end
