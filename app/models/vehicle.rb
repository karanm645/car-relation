class Vehicle < ApplicationRecord
  validates_presence_of :photo
  validates_presence_of :year
  validates_presence_of :make
  validates_presence_of :model
  validates_presence_of :fuel_economy
  validates_presence_of :fuel
  validates_presence_of :electric_range
end 