# == Schema Information
#
# Table name: discounts
#
#  id         :bigint           not null, primary key
#  code       :string(255)      not null
#  end_date   :date             not null
#  money      :float(24)        not null
#  name       :string(255)      not null
#  start_date :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Discount < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :code, presence: true, length: { maximum: 255 }
  validates :money, presence: true
  validates :start_date, presence: true
  validates :end_date, comparison: { greater_than: :start_date }, presence: true
end
