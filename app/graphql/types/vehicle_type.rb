# frozen_string_literal: true

module Types
  class VehicleType < Types::BaseObject
    field :id, ID, null: false
    field :photo, String
    field :year, Integer
    field :make, String
    field :model, String
    field :fuel_economy, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :fuel, String
    field :electric_range, String
  end
end
