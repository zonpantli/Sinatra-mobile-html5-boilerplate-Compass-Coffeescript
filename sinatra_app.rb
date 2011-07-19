require 'sinatra/base'
require 'erb'
require 'coffee-script'

# uncomment if using haml
# require 'haml'

class SinatraApp < Sinatra::Base
  
  set :root, File.dirname(__FILE__)
  
  #Needed for Coffeescript
  get '/js/:script.js' do |script|
    coffee :"coffee/#{script}"
  end
  
  #Starting actual application
  get '/' do
    # haml :index
    erb :index
  end

end