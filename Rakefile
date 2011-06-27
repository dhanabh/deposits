# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

Deposits::Application.load_tasks
desc "Deploy basic application directories"
task :deploy => :environment do
dirs = %w{ app lib test public config}
onserver = "dhanabh@ssh.alwaysdata.com:/home/dhanabh/"
dirs.each do | dir|
`rsync -avz -e ssh "#{RAILS_ROOT}/#{dir}" "#{onserver}" --exclude ".svn"`
end
end
