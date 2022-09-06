# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :user do
    name { FFaker::Name.name }
    email { FFaker::InternetSE.safe_email }
  end
end
