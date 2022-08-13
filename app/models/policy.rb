class Policy < ApplicationRecord
  belongs_to :client, foreign_key: 'source_id', primary_key: 'client_id', optional: true
  belongs_to :carrier, foreign_key: 'source_id', primary_key: 'carrier_id', optional: true
end