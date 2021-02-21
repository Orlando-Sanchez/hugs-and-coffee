# == Schema Information
#
# Table name: multipliers
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  profile_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Multiplier < ApplicationRecord
  belongs_to :profile
  validates :profile, presence: true
end
