require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'appData' do
    it "returns all policies of a client" do
      FactoryBot.create_list(:client, 10)
      FactoryBot.create_list(:carrier, 5)
      FactoryBot.create_list(:policy, 20)
     
      results = HwChallengeSchema.execute(query).as_json
      expect(results['data']['appData']['carrierCount']).to eq(5)
      expect(results['data']['appData']['clientCount']).to eq(10)
      expect(results['data']['appData']['policyCount']).to eq(20)

    end
  end


  def query
    <<~GQL
    query {
        appData
        {
            carrierCount
            clientCount
            policyCount
        }
    }
    GQL
  end
end