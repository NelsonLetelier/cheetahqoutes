class GraphicMemory < ActiveRecord::Base
  attr_accessible :capacidad, :ddr, :marca, :modelo
  has_many :laptops
end
