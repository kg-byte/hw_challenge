module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :clients_connection, Types::ClientType.connection_type, null:false

    def clients_connection(**_args)
      Client.all 
    end
    
    field :client_policies, [Types::PolicyType], null:false do 
      argument :client_id, ID, required: true
    end

    def client_policies(client_id:)
      Policy.where('client_id = ?', client_id.to_i)
    end
  end
end
