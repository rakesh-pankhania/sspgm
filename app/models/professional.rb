class Professional < ApplicationRecord
  belongs_to :user, optional: true

  def name
    "#{first_name} #{last_name}"
  end
end
