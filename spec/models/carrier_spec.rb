require 'rails_helper'

RSpec.describe Carrier, type: :model do
  describe 'relationships' do 
    it {should have_many :policies}
  end
end
