# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :products, dependent: :destroy

  has_one_attached :image
  validates :name, presence: true, length: { maximum: 255 }

  scope :top_3_category, -> {
                           Category.joins(:products).
                             group('products.category_id').
                             order('COUNT(products.category_id) DESC').
                             limit(3)
                         }
end
