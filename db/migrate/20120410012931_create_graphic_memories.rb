class CreateGraphicMemories < ActiveRecord::Migration
  def change
    create_table :graphic_memories do |t|
      t.string :marca
      t.string :modelo
      t.integer :ddr
      t.integer :capacidad

      t.timestamps
    end
  end
end
