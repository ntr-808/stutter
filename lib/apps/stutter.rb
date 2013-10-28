require 'yaml'
require 'sinatra'
require 'pry'
require 'haml'
require 'coffee-script'
require 'json'
require 'logger'

get '/' do
  haml :app, { :layout => :layout }
end

get '/js/stutter.js' do
  coffee :stutter
end