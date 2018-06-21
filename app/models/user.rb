class User < ApplicationRecord
  devise :confirmable, :database_authenticatable, :lockable, :registerable,
         :recoverable, :rememberable, :timeoutable, :trackable, :validatable

  has_one :member
  has_one :professional
end
