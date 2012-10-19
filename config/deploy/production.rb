set(:user) { 'admin' }
set :deploy_base, '/home/admin/deploy'
set :data_dir, '/home/admin/deploy/data'
set(:deploy_to) { "#{deploy_base}/acdata-web" }
# Your HTTP server, Apache/etc
role :web, 'localhost'
# This may be the same as your Web server
role :app, 'localhost'
# This is where Rails migrations will run
role :db,  'localhost', :primary => true

