require 'rails_helper'

RSpec.describe Client, type: :model do
  describe 'relationships' do 
    it {should have_many :policies}
  end
end
