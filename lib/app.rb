require 'sinatra'
require 'shotgun'

get '/' do
  "hello"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Shady", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

set :session_secret, 'super secret'
