class Client < ApplicationRecord
	has_many :policies, foreign_key: 'source_id', primary_key: 'policy_id'
end
