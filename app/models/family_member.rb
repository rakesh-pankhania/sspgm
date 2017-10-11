class FamilyMember < ApplicationRecord
  belongs_to :father, class_name: 'FamilyMember',
                      foreign_key: :father_id,
                      primary_key: :external_id,
                      optional: true
  belongs_to :grandfather, class_name: 'FamilyMember',
                           foreign_key: :grandfather_id,
                           primary_key: :external_id,
                           optional: true
end
