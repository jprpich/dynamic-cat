require 'sinatra'
require 'pry'

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


# asign params["name"] from a post request
name = ""

get '/bird' do
  @name = name
  erb :bird
end

post '/bird' do
  name = params["name"]
  redirect '/bird'
end




