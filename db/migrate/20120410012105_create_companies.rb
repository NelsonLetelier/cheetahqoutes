class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :pais
      t.string :ciudad
      t.string :direccion

      t.timestamps
    end
  end
end
