class CreateCores < ActiveRecord::Migration
  def change
    create_table :cores do |t|
      t.integer :frecuencia
      t.integer :marca
      t.integer :nucleos
      t.string :modelo
      t.string :nombre
      t.integer :thread

      t.timestamps
    end
  end
end
