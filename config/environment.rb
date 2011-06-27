# Load the rails application
require File.expand_path('../application', __FILE__)
#RAILS_GEM_VERSION = '3.0.0'
config.gem 'capistrano', :lib => false
# Initialize the rails application
Deposits::Application.initialize!
