# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address                :string(255)
#  email                  :string(255)      default("")
#  encrypted_password     :string(255)      default(""), not null
#  name                   :string(255)      not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:comments).dependent(:destroy) }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:address).is_at_most(255) }
    it { is_expected.to have_many(:orders).dependent(:destroy) }
  end
end
