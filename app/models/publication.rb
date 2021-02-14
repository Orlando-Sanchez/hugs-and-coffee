class Publication < ApplicationRecord
  belongs_to :profile
  has_one_attached :image
  validates :profile, presence: true
  validates :subtitle, :image, presence: true
end