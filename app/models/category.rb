# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_name  (name)
#
class Category < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true, length: { maximum: 255 }, uniqueness: true
end
