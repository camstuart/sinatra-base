$LOAD_PATH.unshift(File.expand_path("#{File.dirname(__FILE__)}/bin"))
require 'app'
run Sinatra::Application