class CreateCompanyLaptops < ActiveRecord::Migration
  def change
    create_table :company_laptops do |t|
      t.integer :company_id
      t.integer :laptop_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
