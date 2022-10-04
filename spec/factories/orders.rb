# == Schema Information
#
# Table name: orders
#
#  id          :bigint           not null, primary key
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  discount_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_orders_on_discount_id  (discount_id)
#  index_orders_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (discount_id => discounts.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :order do
    user
    discount
  end
end
