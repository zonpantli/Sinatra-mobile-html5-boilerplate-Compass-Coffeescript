require 'sinatra/base'
require 'erb'
require 'coffee-script'

class SinatraApp < Sinatra::Base
  
  set :root, File.dirname(__FILE__)
  
  #Needed for Coffeescript
  get '/js/:script.js' do |script|
    coffee :"coffee/#{script}"
  end
  
  #Starting actual application
  get '/' do
    erb :index
  end

end