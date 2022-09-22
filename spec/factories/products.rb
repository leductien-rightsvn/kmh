# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  color       :string(255)
#  description :string(255)
#  name        :string(255)      not null
#  origin      :string(255)
#  price       :float(24)        not null
#  quantity    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
FactoryBot.define do
  factory :product do
    name { FFaker::Name.name }
    price { 1.5 }
    quantity { 100 }
    description { FFaker::AWS.product_description }
    origin { FFaker::Address.country }
    color { FFaker::Color.name }
    category
  end
end
