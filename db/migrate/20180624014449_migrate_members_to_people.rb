class MigrateMembersToPeople < ActiveRecord::Migration[5.1]
  def change
    add_reference :members, :person, foreign_key: true

    # Create person for each member
    Member.find_each do |member|
      person = Person.create!(
        first_name: member.first_name,
        middle_name: member.middle_name,
        last_name: member.last_name,
        user_id: member.user_id,
        created_at: member.created_at
      )

      member.update!(person: person)
    end

    remove_column :members, :first_name
    remove_column :members, :middle_name
    remove_column :members, :last_name
    remove_reference :members, :user
  end
end
