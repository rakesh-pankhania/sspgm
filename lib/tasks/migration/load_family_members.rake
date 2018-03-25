namespace :migration do
  task :load_family_members, %i[prefix surname] => :environment do |_t, args|
    family_members = []
    File.open(Rails.root.join("lib", "tasks", "migration", "family_members_#{args[:prefix]}.json"), "r") do |file|
      family_members = JSON.load(file)
    end

    FamilyMember.transaction do
      family_members.each do |family_member|
        external_id = "#{args[:prefix]}_#{family_member[0]}"
        father_id = "#{args[:prefix]}_#{family_member[2]}" unless family_member[2] == 0
        grandfather_id = "#{args[:prefix]}_#{family_member[3]}" unless family_member[3] == 0
        picture = family_member[4] unless family_member[4] == 0

        fm = FamilyMember.create!(
          external_id: external_id,
          first_name: family_member[1],
          last_name: args[:surname],
          father_id: father_id,
          grandfather_id: grandfather_id,
          picture: picture
        )
      end
    end
  end
end
