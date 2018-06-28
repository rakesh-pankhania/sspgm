class Person < ApplicationRecord
  belongs_to :user, optional: true
  has_one :member
  has_one :professional

  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    [first_name, middle_name, last_name].flatten.join(' ')
  end
end
