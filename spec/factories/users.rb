# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address                :string(255)
#  email                  :string(255)      default("")
#  encrypted_password     :string(255)      default(""), not null
#  name                   :string(255)      not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
FactoryBot.define do
  factory :user do
    name { FFaker::Name.name }
    address { FFaker::Address.secondary_address }
    password { FFaker::Internet.password }
  end
end
