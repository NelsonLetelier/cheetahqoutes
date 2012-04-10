class Memory < ActiveRecord::Base
  attr_accessible :ddr, :frecuencia, :marca, :tamaño
  has_and_belongs_to_many :laptops
end
