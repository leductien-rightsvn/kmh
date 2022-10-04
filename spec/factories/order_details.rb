# == Schema Information
#
# Table name: order_details
#
#  id         :bigint           not null, primary key
#  price      :float(24)        not null
#  quantity   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :bigint           not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_order_details_on_order_id    (order_id)
#  index_order_details_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id)
#  fk_rails_...  (product_id => products.id)
#
FactoryBot.define do
  factory :order_detail do
    quantity { FFaker::Number.number }
    price { FFaker::Number.decimal }
  end
end
