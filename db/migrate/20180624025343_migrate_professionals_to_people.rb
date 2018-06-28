class MigrateProfessionalsToPeople < ActiveRecord::Migration[5.1]
  def change
    add_reference :professionals, :person, foreign_key: true

    # Create person for each member
    Professional.find_each do |professional|
      person = Person.create!(
        first_name: professional.first_name,
        middle_name: professional.middle_name,
        last_name: professional.last_name,
        user_id: professional.user_id,
        created_at: professional.created_at
      )

      professional.update!(person: person)
    end

    remove_column :professionals, :first_name
    remove_column :professionals, :middle_name
    remove_column :professionals, :last_name
    remove_reference :professionals, :user
  end
end
