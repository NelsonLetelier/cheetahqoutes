class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.string :marca
      t.integer :frecuencia
      t.integer :tamaño
      t.integer :ddr

      t.timestamps
    end
  end
end
