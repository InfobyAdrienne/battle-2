require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "Hello again"
end

get '/random-cat' do
 @name = ["Amigo", "Misty", "Almond"].sample
erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index) 
end

# post '/named-cat' do
#   @name = params[:name]
#   erb(:index)
# end

