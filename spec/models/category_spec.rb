require 'rails_helper'

RSpec.describe Category, type: :model do
    describe 'Validation' do
        it { is_expected.to validate_presence_of(:name) }
        it { should validate_uniqueness_of(:name) }
        it { should validate_length_of(:name).is_at_least(6).is_at_most(200) }
     
    end
end

