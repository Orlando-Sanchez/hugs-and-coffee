class User < ApplicationRecord
  has_one :profile
  has_many :monetary_accounts
  has_many :appreciations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
