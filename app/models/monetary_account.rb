# == Schema Information
#
# Table name: monetary_accounts
#
#  id             :integer          not null, primary key
#  entity         :string           not null
#  account_email  :string           not null
#  identification :string
#  account_kind   :string
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  account_number :integer
#
class MonetaryAccount < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :entity, :account_email, presence: true
end
