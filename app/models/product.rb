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
#  quantity    :integer     uuut     not null
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
  # associations
  belongs_to :category
  has_many_attached :images

  validates :name, presence: true, length: { maximum: 255 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :quantity, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :description, length: { maximum: 255 }
  validates :origin, length: { maximum: 255 }
  validates :color, length: { maximum: 255 }
end
