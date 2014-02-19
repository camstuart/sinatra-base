require 'rubygems'
require 'logger'

require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/config_file'

require 'yaml'

config_file File.join(File.dirname(__FILE__), '/../config.yaml')

enable :static
enable :logging
set :root, File.expand_path("#{File.dirname(__FILE__)}/../")
set :erb, :escape_html => true
set :public_folder, File.expand_path("#{File.dirname(__FILE__)}/../public")

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    #also_reload File.expand_path("#{File.dirname(__FILE__)}/../helpers/init")
  end

end

require_relative '../models/init'
require_relative '../helpers/init'
require_relative '../routes/init'