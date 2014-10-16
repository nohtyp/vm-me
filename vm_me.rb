require 'sinatra'

before do
  @vm_me_config = File.expand_path("~/.vm_me.config")
end

error do
  erb :'500'
end
not_found do
  erb :'404'
end

get '/' do
  erb :login
end

get '/build' do
  erb :index
end

get '/config' do
  erb :config
end

post '/build' do
  redirect '/config' unless File.file?(@vm_me_config)
  erb :index
end

post '/manage_server' do
 "Parameters selected: #{params[:post]}"
end

post '/configured' do
  f = File.open(@vm_me_config, 'w')
  redirect '/build'
end
