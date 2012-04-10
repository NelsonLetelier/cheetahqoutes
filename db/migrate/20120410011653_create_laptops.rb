class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.integer :precio
      t.string :modelo
      t.string :marca

      t.timestamps
    end
  end
end
