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
 "Parameters selected: #{params[:projectname]}, #{params[:application_server]}, #{params[:mange_server]}, #{params[:webserver]}, #{params[:database_server]}, #{params[:message_queue_server]}, #{params[:monitor_systems]}"
end

post '/configured' do

@arg = [ 'email_address', 'versionmgmt', 'vcspasswd' ]

  File.open(@vm_me_config, 'r', 0600) do |file|
    #@arg = [ 'email_address', 'versionmgmt', 'vcspasswd' ]
    @arg.each {|p| file.puts("#{p}" + ":" + params[p])}
  end
    redirect '/build'
end
