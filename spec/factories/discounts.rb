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
FactoryBot.define do
  factory :discount do
    name { FFaker::Name.name }
    code { FFaker::Code.ean }
    money { FFaker::Number.number }
  end
end
