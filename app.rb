require 'sinatra'
require 'json'
require 'net/http'

get '/' do
  erb :home
end

get '/food' do
  erb :food
end

post '/food' do
  "You have entered #{params[:ingredient]}"

  uri = URI.parse(URI.encode('https://is-vegan.netlify.app/.netlify/functions/api?ingredients=chickpea'))
  api_response = Net::HTTP.get(uri)
  JSON.parse(api_response).to_s
  
end

=begin
get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/search' do
  erb :search
end

# This page gets rendered when the user enters an unidentified route
not_found do
  erb :not_found, :layout => :error_layout
end
=end