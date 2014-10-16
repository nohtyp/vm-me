require 'sinatra'

error do
  erb :'500'
end
not_found do
  erb :'404'
end

get '/' do
  erb :index
end

post '/manage_server' do
 "Parameters selected: #{params[:post]}"
end
