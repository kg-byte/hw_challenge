require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'clients_connection' do
    it "returns first 50 clients with required attributes by default" do
      FactoryBot.create_list(:client, 60)
      response = HwChallengeSchema.execute(query_1).as_json

      expect(response['data']['clientsConnection']['edges'].count).to eq(50)
      response['data']['clientsConnection']['edges'].each do |datum|
        expect(datum['node']).to have_key('id')
        expect(datum['node']).to have_key('sourceId')
        expect(datum['node']).to have_key('name')
        expect(datum['node']).to have_key('fullAddress')
        expect(datum['node']).to have_key('division')
        expect(datum['node']).to have_key('majorGroup')
        expect(datum['node']).to have_key('industryGroup')
        expect(datum['node']).to have_key('SIC')
        expect(datum['node']).to have_key('description')
      end
    end

  it "returns specified number of clients with requested attributes" do
      FactoryBot.create_list(:client, 30)
      response = HwChallengeSchema.execute(query_2).as_json

      expect(response['data']['clientsConnection']['edges'].count).to eq(10)
      response['data']['clientsConnection']['edges'].each do |datum|
        expect(datum['node']).to have_key('id')
        expect(datum['node']).to have_key('sourceId')
        expect(datum['node']).to have_key('name')
        expect(datum['node']).to have_key('fullAddress')
        expect(datum['node']).to have_key('description')
        expect(datum['node']).to_not have_key('division')
        expect(datum['node']).to_not have_key('majorGroup')
        expect(datum['node']).to_not have_key('industryGroup')
        expect(datum['node']).to_not have_key('SIC')
      end
   end
  end

  def query_1
    <<~GQL
    query {
     clientsConnection { 
     edges{
         node {
                id
                sourceId
                name
                fullAddress
                division
                majorGroup
                industryGroup
                SIC 
                description
                }
            }
        }
    }
    GQL
  end


  def query_2
    <<~GQL
     query {
      clientsConnection(first: 10, after: "MTA") { 
      pageInfo {
          startCursor
          endCursor
      }
      edges{
          node {
                 id
                 sourceId
                 name
                 fullAddress
                 description
                 }
             }
         }
     }
    GQL
  end
end