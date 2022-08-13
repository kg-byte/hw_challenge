# frozen_string_literal: true

module Types
  class AppDataType < Types::BaseObject
    field :carrier_count, Integer
    field :client_count, Integer
    field :policy_count, Integer
  end
end
