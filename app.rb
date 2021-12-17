require 'sinatra'
require 'json'
require 'net/http'

get '/' do
  erb :home
end

post'/' do
  uri = URI.parse(URI.encode("https://is-vegan.netlify.app/.netlify/functions/api?ingredients=#{params[:ingredient]}"))
  api_response = Net::HTTP.get(uri)
  parsed_response = JSON.parse(api_response)
  erb :home, locals:{ valid: parsed_response["isVeganSafe"].to_s }
end

get '/about' do
  erb :about
end