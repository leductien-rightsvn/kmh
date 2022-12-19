# == Schema Information
#
# Table name: roles
#
#  id            :bigint           not null, primary key
#  name          :string(255)
#  resource_type :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  resource_id   :bigint
#
# Indexes
#
#  index_roles_on_resource  (resource_type,resource_id)
#
FactoryBot.define do
  factory :role do
    name { FFaker::Name.name }
    users_roles
    users
  end
end
