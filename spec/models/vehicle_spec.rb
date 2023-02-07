require 'rails_helper'

RSpec.describe Vehicle, type: :model do 
  describe 'validations' do 
    it {should validate_presence_of :photo}
    it {should validate_presence_of :year}
    it {should validate_presence_of :make}
    it {should validate_presence_of :model}
    it {should validate_presence_of :fuel_economy}
    it {should validate_presence_of :fuel}
    it {should validate_presence_of :electric_range}
  end 
end 