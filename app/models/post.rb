# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
    validates :name, presence: true, length: { maximum: 255 }
end
