class Laptop < ActiveRecord::Base
  attr_accessible :marca, :modelo, :precio
  has_and_belongs_to_many :companies
  belongs_to :hard_drives
  belongs_to :cores
  has_and_belongs_to_many :memories
  belongs_to :graphic_memories
end
