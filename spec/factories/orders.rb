# == Schema Information
#
# Table name: orders
#
#  id          :bigint           not null, primary key
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  discount_id :integer
#  user_id     :integer
#
FactoryBot.define do
  factory :order do
    user_id { 1 }
    discount_id { 1 }
    status { 1 }
  end
end
