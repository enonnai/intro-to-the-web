require 'sinatra'

get '/cat' do
  @name = ["Amigo", "Oscar", "Shady", "Viking"].sample
  erb(:index)
end
