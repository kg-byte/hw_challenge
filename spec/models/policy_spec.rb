require 'rails_helper'

RSpec.describe Policy, type: :model do
  describe 'relationships' do 
    it {should belong_to(:client).optional}
    it {should belong_to(:carrier).optional}
  end
end
