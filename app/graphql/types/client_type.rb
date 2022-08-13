# frozen_string_literal: true

module Types
  class ClientType < Types::BaseObject
    field :id, ID, null: false
    field :source_id, Integer
    field :name, String
    field :address, String
    field :city, String
    field :state, String
    field :division, String
    field :major_group, Integer
    field :industry_group, Integer
    field :SIC, Integer
    field :description, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :full_address, String

    def full_address
      [object.address, object.city, object.state].compact.join(",")
    end
  end
end
