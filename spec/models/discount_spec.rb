# == Schema Information
#
# Table name: discounts
#
#  id         :bigint           not null, primary key
#  code       :string(255)
#  money      :float(24)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Discount, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:money) }
    it { is_expected.to validate_length_of(:code) }
    it { is_expected.to validate_length_of(:name) }
  end
end
