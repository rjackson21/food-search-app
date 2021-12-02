require 'sinatra'

get '/' do
  erb :home
end

get '/food' do
  erb :food
end

post '/food' do
  "You have entered #{params[:ingredient]}"
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