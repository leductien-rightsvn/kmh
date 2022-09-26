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
FactoryBot.define do
  factory :discount do
    name { FFaker::Name.name }
    code { FFaker::Code.ean }
    money { FFaker::Number.number }
    start_date { DateTime.now }
    end_date { DateTime.now + 10.days }
  end
end
