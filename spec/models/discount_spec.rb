# == Schema Information
#
# Table name: discounts
#
#  id         :bigint           not null, primary key
#  code       :string(255)      not null
#  end_date   :date             not null
#  money      :float(24)        not null
#  name       :string(255)      not null
#  start_date :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Discount, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:money) }
    it { is_expected.to validate_presence_of(:end_date) }
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_length_of(:code) }
    it { is_expected.to validate_length_of(:name) }
  end

  describe 'end_date should be on_or_after start_date' do
    subject { discount.valid? }
    context 'when end_date on_or_after start_date' do
      let(:discount) { build :discount, start_date: '2020/03/20', end_date: '2020/03/21' }

      it { is_expected.to be_truthy }
    end

    context 'when end_date before start_date' do
      let(:discount) { build :discount, start_date: '2020/03/20', end_date: '2020/03/19' }
      it { is_expected.to be_falsey }
    end
  end
end
