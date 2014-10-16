require 'sinatra'

error do
  erb :'500'
end
not_found do
  erb :'404'
end

get '/' do
  erb :login
end

get '/config' do
  erb :config
end

post '/build' do
  redirect '/config' unless File.file?('~/.vm_me.config')
  erb :index
end

post '/manage_server' do
 "Parameters selected: #{params[:post]}"
end

post '/configured' do
  "You have saved the file ~/vm_me.config"
end
