require 'sinatra'

get '/' do
  erb :index
end

# access params["name"] from paramater variables
get '/cat/:name' do
  @name = params["name"]
  erb :cat
end

# asign params["name"] from the query string
get '/dog/name' do
  @name = params["name"]
  @last_name = params["last_name"]
  erb :dog
end

