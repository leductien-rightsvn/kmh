# == Schema Information
#
# Table name: discounts
#
#  id         :bigint           not null, primary key
#  code       :string(255)
#  money      :float(24)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Discount < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :code, presence: true, length: { maximum: 255 }
  validates :money, presence: true
end
