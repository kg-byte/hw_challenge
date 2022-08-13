FactoryBot.define do
  factory :carrier do
    source_id { (0..5).to_a.sample }
    company_name { ['ABC insurance', 'XYZ Insurance', 'Progressive'].sample }
    company_address { ['123 st', '999 ave', '2nd ave'].sample }
    company_address_2 { ['suit 600', nil].sample }
    company_city { ['Denver', 'NY City', 'Los Angles'].sample}
    company_state { ['CO', 'NY', 'CA'].sample}
    company_zip { [19106, 20815, 80123].sample}  
  end
end