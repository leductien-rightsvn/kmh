# == Schema Information
#
# Table name: roles
#
#  id            :bigint           not null, primary key
#  name          :string(255)
#  resource_type :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  resource_id   :bigint
#
# Indexes
#
#  index_roles_on_resource  (resource_type,resource_id)
#
require 'rails_helper'

RSpec.describe Role, type: :model do
  describe 'Association' do
    it { is_expected.to have_many(:users_roles) }
    it { is_expected.to have_many(:users) }
  end
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(255) }
  end
end
