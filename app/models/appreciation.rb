class Appreciation < ApplicationRecord
  belongs_to :user
  enum appreciation_kind: { hug: 0, coffee: 1 }
  validates :user, presence: true
  validates :appreciation_kind, :donor_fullname, :donor_occupation, :donor_message, presence: true
end