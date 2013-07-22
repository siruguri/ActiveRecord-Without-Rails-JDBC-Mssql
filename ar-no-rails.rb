require "rubygems"
require "bundler/setup"
require "active_record"

DATABASE_ENV = ENV['DATABASE_ENV'] || 'development'
MIGRATIONS_DIR = ENV['MIGRATIONS_DIR'] || 'db/migrate'

project_root = File.dirname(File.absolute_path(__FILE__))
Dir.glob(project_root + "/app/models/*.rb").each{|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))[DATABASE_ENV]
ActiveRecord::Base.establish_connection(connection_details)

if __FILE__ == $0
  puts "Count of Pages: #{Page.count}"
end
