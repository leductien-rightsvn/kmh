# == Schema Information
#
# Table name: orders
#
#  id          :bigint           not null, primary key
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  discount_id :integer
#  user_id     :integer
#
class Order < ApplicationRecord
    belongs_to :user
    belongs_to :discount
    validates :status, presence: true
end
