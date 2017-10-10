namespace :migration do
  task load_members: :environment do |_t, args|

    members = []
    File.open(Rails.root.join("lib", "tasks", "migration", "members.json"), "r") do |file|
      members = JSON.load(file)
    end

    Member.transaction do
      members.each do |member|
        parsed_date = DateTime.parse(member[15]) unless member[15] == '0000-00-00'

        Member.create!(
          first_name: spacify_and_titleize(member[2]),
          middle_name: spacify_and_titleize(member[3]),
          last_name: spacify_and_titleize(member[1]),
          spouse: spacify_and_titleize(member[4]),
          telephone: member[5],
          address: spacify_and_titleize(member[6]),
          city: spacify_and_titleize(member[7]),
          state: spacify_and_titleize(member[8]),
          zip: member[9].gsub('_', ' '),
          country: spacify_and_titleize(member[10]),
          email: member[11],
          children: spacify_and_titleize(member[12]),
          education: spacify_and_titleize(member[13]),
          profession: spacify_and_titleize(member[14]),
          created_at: parsed_date,
          updated_at: parsed_date
        )
      end
    end
  end

  private

  def spacify_and_titleize(str)
    str.gsub('_', ' ').titleize
  end
end
