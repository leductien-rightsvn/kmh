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
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :discount
  has_many :order_details, dependent: :destroy

  enum status: {
    waiting_confirm: 1,
    already_confirm: 2,
    waiting_paid: 3,
    already_paid: 4,
  }
end
