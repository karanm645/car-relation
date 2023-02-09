require 'rails_helper'

RSpec.describe Types::QueryType do 
  describe 'display all vehicles' do 
    it 'can query all vehicles' do 
      lambo = Vehicle.create(photo: "https://afdc.energy.gov/vehicles/search/files/u/light_autos/photos/13145/photo_upload/d166144c0f6d82e81737ae232e55da9e.jpg?105c20c4e2", year: 2023, make: "Audi", model: "A8L", fuel_economy:"10", fuel: "Hybrid Electric", electric_range: "10")
      bugatti = Vehicle.create(photo: "https://afdc.energy.gov/vehicles/search/files/u/light_autos/photos/13145/photo_upload/d166144c0f6d82e81737ae232e55da9e.jpg?105c20c4e2", year: 2021, make: "Buggati", model: "Nice", fuel_economy:"20", fuel: "Electric", electric_range: "55")

      result = NrelAppSchema.execute(query).as_json
      binding.pry
    end 
    def query
      <<~GQL
      {
        vehicles {
          id
          photo
          year
          make
          model
          fuel_economy
          fuel
          electric_range
          }
      }
      GQL
    end
  end 
end 