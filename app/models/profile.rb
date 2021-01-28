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
