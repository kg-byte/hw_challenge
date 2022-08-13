require 'rails_helper'

RSpec.describe AppDatum, type: :model do
  describe 'class methods' do  
    it 'returns the number of client counts' do 
      expect(AppDatum.client_count).to eq(0)
      FactoryBot.create_list(:client, 5)
      expect(AppDatum.client_count).to eq(5)
    end

    it 'returns the number of carrier counts' do 
      expect(AppDatum.carrier_count).to eq(0)
      FactoryBot.create_list(:carrier, 5)
      expect(AppDatum.carrier_count).to eq(5)
    end

    it 'returns the number of policy counts' do 
      expect(AppDatum.policy_count).to eq(0)
      FactoryBot.create_list(:policy, 5)
      expect(AppDatum.policy_count).to eq(5)
    end
  end
end
