class Company < ActiveRecord::Base
  attr_accessible :ciudad, :direccion, :pais
  has_many :company_laptops
  has_many :laptops, :through => :company_laptops  
end
