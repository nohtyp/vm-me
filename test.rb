require 'sinatra'

get '/' do
  %q{<form action="/manage_server" method="post">
               <label for="projectname">Project Name:</label>
		<input name='projectname' value=''/>
		<br>
		<br>
		<label for="manage_server">Manage Server:</label>
		<input list="manage_server" size="10" name="post[manage_server]">
		<datalist id="manage_server">
			<option value='none'>
			<option value='vmware'>
			<option value='openstack'>
			<option value='ovirt'>
		</datalist>
		<br>
		<br>
		<label for="webserver">Webserver:</label>
		<input list="webserver" size="10" name="post[webserver]">
		<datalist id='webserver'>
			<option value='none'>
			<option value='nginx'>
			<option value='apache'>
		</datalist>
		<br>
		<br>
		<label for="application_server">Application Server:</label>
		<input list="application_server"size="10" name="post[application_server]">
	        <datalist id="application_server">
			<option value='none'>
			<option value='jboss'>
		        <option value='tomcat'>
			<option value='glassfish'>
		</datalist>
		<br>
		<br>
		<label for="database_server">Database Server:</label>
		<input list="database_server" size="10" name="post[database_server]">
		<datalist id="database_server">
			<option value='none'>
			<option value='mysql'>
		        <option value='postgresql'>
			<option value='sqlserver'>
		</datalist>
		<br>
		<br>
		<label for="message_queue_server">Message Queue Server:</label>
		<input list="message_queue_server" size="10" name="post[message_queue_server]">
	        <datalist id='message_queue_server'>
			<option value='none'>
			<option value='rabbitmq'>
		        <option value='activemq'>
			<option value='zeromq'>
		</datalist>
		<br>
		<br>
		<label for="monitor_systems">Monitor Systems?</label>
		<input type="checkbox" name="post[monitor_systems]" value="yes">yes</input>
		<input type="checkbox" name="post[monitor_systems]" value="no">no</input>
		<br>
		<br>
		<input type='submit' value='build' />
		<input type='submit' value='cancel' />
		<input type='submit' value='defaults' />
    </form>}
end

post '/manage_server' do
  "Options: #{params[:post]}"
end
