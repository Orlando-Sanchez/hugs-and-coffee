class Multiplier < ApplicationRecord
  belongs_to :profile
  validates :profile, presence: true
end