class MonetaryAccount < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :entity, :account_email, presence: true
end