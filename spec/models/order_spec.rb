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
require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
