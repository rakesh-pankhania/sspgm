class MoveCityCountryToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :city, :string, null: true, index: true
    add_column :people, :country, :string, null: true, index: true

    Member.find_each do |member|
      member.person.update!(city: member.city, country: member.country)
    end
  end
end
