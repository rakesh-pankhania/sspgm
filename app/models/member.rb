class Member < ApplicationRecord
  belongs_to :person

  delegate :full_name, to: :person
end
