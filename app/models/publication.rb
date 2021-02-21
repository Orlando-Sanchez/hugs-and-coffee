# == Schema Information
#
# Table name: publications
#
#  id         :integer          not null, primary key
#  subtitle   :text             not null
#  profile_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Publication < ApplicationRecord
  belongs_to :profile
  has_one_attached :image
  validates :profile, presence: true
  validates :subtitle, :image, presence: true
end
