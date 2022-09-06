FactoryBot.define do
  factory :user do
    name { FFaker::Name.name }
    email { FFaker::InternetSE.safe_email }
  end
end
