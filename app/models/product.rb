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
class Product < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, length: { maximum: 255 }
  validates :price, presence: true
  validates :quantity, presence: true
  validates :description, length: { maximum: 255 }
  validates :origin, length: { maximum: 255 }
  validates :color, length: { maximum: 255 }
  has_many_attached :images
end
