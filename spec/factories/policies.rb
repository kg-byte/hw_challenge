FactoryBot.define do
  factory :policy do
    source_id { (0..5).to_a.sample }
    policy_type { ['Directors & Officers', 'Commersial Property', 'Oil & Gas Bond'].sample }
    division { ['A', 'D', 'I', 'E', 'G'].sample}
    client_id {[1, 20, 34, 80, 37, 2].sample }
    carrier_id {[1, 20, 34, 80, 37, 2].sample }
    effective_date { ['2017-09-18', '2018-12-01', '2019-01-01'].sample}
    expiration_date { ['2020-09-18', '2021-12-01', '2022-01-01'].sample}
    written_premium { [205, 17, 809, 371, 302, 25].sample}
    carrier_policy_number { [2052, 184, 3479, 8099, 173].sample}
  end
end