# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  content    :string(255)
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_comments_on_product_id  (product_id)
#  index_comments_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:product) }
  end
end
