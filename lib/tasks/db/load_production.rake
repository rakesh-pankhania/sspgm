namespace :db do
  task :load_production, [:host, :port, :username, :database] do |_t, args|
    puts "Regenerating local DB..."
    system "DISABLE_DATABASE_ENVIRONMENT_CHECK=1 rails db:drop db:create"
    unless $?.success?
      puts "Could not drop database"
      exit 1
    end

    puts "Copying production DB to tempfile..."
    system "pg_dump -h #{args.host} -p #{args.port} -U #{args.username} -W -v -O -x -F c -f /tmp/production.sql #{args.database}"
    unless $?.success?
      puts "Could not copy production database"
      exit 1
    end

    puts "Loading local DB from tempfile"
    system "pg_restore -O -x -F c -d sspgm_development tmp/production.sql"
    unless $?.success?
      puts "Could not load local database from /tmp/production.sql"
      exit 1
    end

    puts "Done!"
    exit 0
  end
end
