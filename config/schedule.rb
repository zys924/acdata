# Use this file to easily define all of your cron jobs.

every :sunday, :at => "4am" do
  rake "ands_parties:retrieve"
end

every :sunday, :at => "4:30am" do
  rake "memre:retrieve"
end

every :sunday, :at => "5am" do
  rake "rda_grants:retrieve"
end

every "30 * * * *" do
  rake "nmr:harvest_daily"
end

every :hour do
  rake "nmr:import"
end

every :day, :at => "2am" do
  rake "aperio:harvest"
end
