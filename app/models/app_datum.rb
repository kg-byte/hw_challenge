class AppDatum < ApplicationRecord

	def self.client_count
		Client.count 
	end

	def self.carrier_count
		Carrier.count 
	end

	def self.policy_count
		Policy.count 
	end
end
