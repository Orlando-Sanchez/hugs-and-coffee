# == Schema Information
#
# Table name: appreciations
#
#  id                :integer          not null, primary key
#  appreciation_kind :integer          not null
#  donor_fullname    :string           not null
#  donor_occupation  :string           not null
#  donor_message     :text             not null
#  coffees_quantity  :integer
#  hug_seconds       :float
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Appreciation < ApplicationRecord
  belongs_to :user
  enum appreciation_kind: { hug: 0, coffee: 1 }
  validates :user, presence: true
  validates :appreciation_kind, :donor_fullname, :donor_occupation, :donor_message, presence: true
end
