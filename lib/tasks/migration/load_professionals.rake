namespace :migration do
  task load_professionals: :environment do |_t, args|

    professionals = []
    File.open(Rails.root.join("lib", "tasks", "migration", "professionals.json"), "r") do |file|
      professionals = JSON.load(file)
    end

    Professional.transaction do
      professionals.each do |professional|
        Professional.create!(
          first_name: spacify_and_titleize(professional[2]),
          middle_name: spacify_and_titleize(professional[3]),
          last_name: spacify_and_titleize(professional[1]),
          picture: professional[16],
          graduation_degree: spacify_and_titleize(professional[4]),
          graduation_university: spacify_and_titleize(professional[5]),
          graduation_year: spacify_and_titleize(professional[6]),
          job_title: spacify_and_titleize(professional[7]),
          job_company: spacify_and_titleize(professional[8]),
          location: spacify_and_titleize(professional[9]),
          telephone: spacify_and_titleize(professional[10]),
          mobile: spacify_and_titleize(professional[11]),
          fax: spacify_and_titleize(professional[12]),
          email: professional[13],
          website: professional[14],
          category: spacify_and_titleize(professional[15]),
          spec: spacify_and_titleize(professional[17])
        )
      end
    end
  end

  private

  def spacify_and_titleize(str)
    str.gsub('_', ' ').titleize
  end
end
