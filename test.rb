require 'sinatra'

get '/' do
  %q{<form action="/manage_server" method="post">
               <label for="projectname">Project Name:</label>
		<input name="post[projectname]" value=''required />
		<br />
		<br />
		<label for="manage_server">Manage Server:</label>
		<input list="manage_server" size="10" name="post[manage_server]" required pattern='none|vmware|openstack|ovirt'>
		<datalist id="manage_server">
			<option readonly value='none'>none</option>
			<option value='vmware'>vmware</option>
			<option value='openstack'>openstack</option>
			<option value='ovirt'>ovirt</option>
		</datalist>
		<br />
		<br />
		<label for="webserver">Webserver:</label>
		<input list="webserver" size="10" name="post[webserver]" required pattern='none|nginx|apache'>
		<datalist id='webserver'>
			<option value='none'>none</option>
			<option value='nginx'>nginx</option>
			<option value='apache'>apache</option>
		</datalist>
		<br />
		<br />
		<label for="application_server">Application Server:</label>
		<input list="application_server"size="10" name="post[application_server]" required pattern='none|jboss|tomcat|glassfish'>
	        <datalist id="application_server">
			<option value='none'>none</option>
			<option value='jboss'>jboss</option>
		        <option value='tomcat'>tomcat</option>
			<option value='glassfish'>glassfish</option>
		</datalist>
		<br />
		<br />
		<label for="database_server">Database Server:</label>
		<input list="database_server" size="10" name="post[database_server]" required pattern='none|mysql|postgresql|sqlserver'>
		<datalist id="database_server">
			<option value='none'>none</option>
			<option value='mysql'>mysql</option>
		        <option value='postgresql'>postgresql</option>
			<option value='sqlserver'>sqlserver</option>
		</datalist>
		<br />
		<br />
		<label for="message_queue_server">Message Queue Server:</label>
		<input list="message_queue_server" size="10" name="post[message_queue_server]" required pattern='none|rabbitmq|activemq|zeromq'>
	        <datalist id='message_queue_server'>
			<option value='none'>none</option>
			<option value='rabbitmq'>rabbitmq</option>
		        <option value='activemq'>activemq</option>
			<option value='zeromq'>zeromq</option>
		</datalist>
		<br />
		<br />
		<label for="monitor_systems">Monitor Systems?</label>
		<input type="radio" name="post[monitor_systems]" value="yes">yes</input>
		<input type="radio" name="post[monitor_systems]" value="no">no</input>
		<br />
		<br />
		<input type='submit' value='build' />
		<input type='reset' value='cancel' />
    </form>}
end

post '/manage_server' do
 "Parameters selected: #{params[:post]}"
end
