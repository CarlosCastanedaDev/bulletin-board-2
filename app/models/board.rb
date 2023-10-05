# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Board < ApplicationRecord
  validates(:name, presence: true, uniqueness: true)
  # belongs_to :user, class_name: "user", foreign_key: "user_id"
  # has_many :posts, class_name: "post", foreign_key: "user_id"
end
