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

get '/js/ampify.js' do
  coffee :ampify
end