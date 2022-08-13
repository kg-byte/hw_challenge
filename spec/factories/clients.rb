FactoryBot.define do
  factory :client do
    source_id { (0..5).to_a.sample }
    name { ['ABC insurance', 'XYZ Insurance', 'Progressive'].sample }
    address { ['123 st', '999 ave', '2nd ave'].sample }
    city { ['Denver', 'NY City', 'Los Angles'].sample}
    state { ['CO', 'NY', 'CA'].sample}
    division { ['A', 'D', 'I', 'E', 'G'].sample}
    major_group { [1, 20, 34, 80, 37, 2].sample}
    industry_group { [205, 17, 809, 371, 302, 25].sample}
    SIC { [2052, 184, 3479, 8099, 173].sample}
    description { ['Cookies and Crackers', 'Books, Periodicals, and Newspapers', 'Taxicabs'].sample}
  end
end