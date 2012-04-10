class Core < ActiveRecord::Base
  attr_accessible :frecuencia, :marca, :modelo, :nombre, :nucleos, :thread
  has_many :laptops
end
