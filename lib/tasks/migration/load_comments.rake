namespace :migration do
  task :load_comments, %i[filename] => :environment do |_t, args|

    comments = []
    File.open(Rails.root.join("lib", "tasks", "migration", "#{args[:filename]}.json"), "r") do |file|
      comments = JSON.load(file)
    end

    Comment.transaction do
      comments.each do |comment|
        parsed_date = DateTime.strptime(comment[5], '%B %e, %Y') unless comment[5].blank?

        Comment.create!(
          first_name: comment[1],
          last_name: comment[2],
          email: comment[3],
          comment: comment[4],
          country: comment[6],
          created_at: parsed_date,
          updated_at: parsed_date
        )
      end
    end
  end
end
