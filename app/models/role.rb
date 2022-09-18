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
class Role < ApplicationRecord
  has_many :users_roles, dependent: :destroy
  has_many :users, through: :users_roles
  belongs_to :resource,
             polymorphic: true,
             optional: true

  validates :name, presence: true, length: { maximum: 255 }
  validates :resource_type,
            inclusion: { in: Rolify.resource_types },
            allow_nil: true

  scopify
end
