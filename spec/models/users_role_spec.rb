# == Schema Information
#
# Table name: users_roles
#
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  role_id    :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_users_roles_on_role_id              (role_id)
#  index_users_roles_on_user_id              (user_id)
#  index_users_roles_on_user_id_and_role_id  (user_id,role_id)
#
require 'rails_helper'

RSpec.describe UsersRole, type: :model do
  describe 'Validations' do
    it { is_expected.to belong_to(:role) }
    it { is_expected.to belong_to(:user) }
  end
end
