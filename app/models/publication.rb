class Publication < ApplicationRecord
  belongs_to :profile
  has_one_attached :image
  validates :profile, presence: true
  validates :subtitle, presence: true
end
