namespace :migration do
  task load_businesses: :environment do |_t, args|

    businesses = []
    File.open(Rails.root.join("lib", "tasks", "migration", "businesses.json"), "r") do |file|
      businesses = JSON.load(file)
    end

    Business.transaction do
      businesses.each do |business|
        Business.create!(
          name: spacify_and_titleize(business[1]),
          owner: spacify_and_titleize(business[2]),
          address: spacify_and_titleize(business[3]),
          city: spacify_and_titleize(business[4]),
          state: spacify_and_titleize(business[5]),
          zip: spacify_and_titleize(business[6]),
          country: spacify_and_titleize(business[7]),
          tel: spacify_and_titleize(business[8]),
          fax: spacify_and_titleize(business[9]),
          mobile: spacify_and_titleize(business[10]),
          website: business[11],
          email: business[12],
          category: spacify_and_titleize(business[13]),
          spec: spacify_and_titleize(business[14])
        )
      end
    end
  end

  private

  def spacify_and_titleize(str)
    str.gsub('_', ' ').titleize
  end
end
