# frozen_string_literal: true

module Types
  class PolicyType < Types::BaseObject
    field :id, ID, null: false
    field :source_id, Integer
    field :policy_type, String
    field :division, String
    field :effective_date, String
    field :expiration_date, String
    field :written_premium, Integer
    field :carrier_policy_number, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :carrier_id, Integer
    field :client_id, Integer
  end
end
