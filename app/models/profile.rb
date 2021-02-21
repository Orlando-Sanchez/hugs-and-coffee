# == Schema Information
#
# Table name: profiles
#
#  id            :integer          not null, primary key
#  fullname      :string           not null
#  occupation    :string           not null
#  biography     :text             not null
#  coffee_price  :decimal(, )      not null
#  currency_sign :string           not null
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  is_published  :boolean          default(FALSE)
#
class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  has_many :multipliers
  has_many :publications
  accepts_nested_attributes_for :multipliers
  validates :user, presence: true
  validates :fullname, :occupation, :biography, :coffee_price, :currency_sign, presence: true
  validates_length_of :multipliers, maximum: 4
end
