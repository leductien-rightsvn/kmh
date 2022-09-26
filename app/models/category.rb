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
end
