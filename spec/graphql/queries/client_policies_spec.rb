require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'clientPolicies' do
    it "returns all policies of a client" do
      client = FactoryBot.create(:client)
      policies = FactoryBot.create_list(:policy, 5, client_id: client.id)
      
      results = HwChallengeSchema.execute(query).as_json
      expect(results['data']['clientPolicies'].count).to eq(5)
      results['data']['clientPolicies'].each do |datum|
        expect(datum).to have_key('id')
        expect(datum).to have_key('policyType')
        expect(datum).to have_key('division')
        expect(datum).to have_key('carrierId')
        expect(datum).to have_key('clientId')
        expect(datum).to have_key('effectiveDate')
        expect(datum).to have_key('expirationDate')
        expect(datum).to have_key('writtenPremium')
        expect(datum).to have_key('carrierPolicyNumber')
      end
    end
  end

  def query
    <<~GQL
    query {
        clientPolicies(clientId: #{Client.last.id})
            {
              id
              policyType
              division
              carrierId
              clientId 
              effectiveDate
              expirationDate
              writtenPremium
              carrierPolicyNumber
            }

    }
    GQL
  end
end