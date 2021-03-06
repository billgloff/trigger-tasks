require 'hashie'

class TriggerTasks::Configuration < Hashie::Dash
  property :verbose, :required => true, :default => true

  property :build_task

  property :forge_path, :required => true, :default => 'forge'
  property :namespace, :required => true, :default => 'forge'
  property :default_platform, :default => 'ios'

  property :test_flight_api_url, :default => "https://testflightapp.com/api/builds.json"
  property :test_flight_api_token, :default => ENV['TEST_FLIGHT_API_TOKEN']
  property :test_flight_team_token
  property :test_flight_distribution_lists

  property :webserver, required: true, default: true
  property :webserver_port, required: true, default: 4567
  property :webserver_source_folder, required: true, default: 'src'
  property :webserver_default_file, required: true, default: 'index.html'

end
