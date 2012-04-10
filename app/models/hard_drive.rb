class HardDrive < ActiveRecord::Base
  attr_accessible :cache, :marca, :rpm, :tamano
  has_many :laptops
end
