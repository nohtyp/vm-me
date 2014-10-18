function manageToggle() {
	       var creds = document.getElementById("managecreds");
	       var manage_value = document.getElementById("manage_server").value;
	       if (manage_value == 'no hypervisor') {
		      creds.style.display           ='none';
	       } else {
		      creds.style.display           ='initial';
	       }
       } 

function webToggle(webvalue) {
	       var nginxver = document.getElementById("nginxversion");
	       var apachever = document.getElementById("apacheversion");
	       if (webvalue.value == 'no webserver') {
		      apachever.style.display      ='none';
		      nginxver.style.display       ='none';
	       } else if (webvalue.value == 'apache') {
		      apachever.style.display      = 'initial';
		      nginxver.style.display       = 'none';
	       } else if (webvalue.value == 'nginx') {
	              nginxver.style.display       = 'initial';
		      apachever.style.display      = 'none';
	       } else {
		       alert("WTF")
	       }
       } 
function appToggle(appvalue) {
	       var jbossver = document.getElementById("jbossversion");
	       var tomcatver = document.getElementById("tomcatversion");
	       var glassfishver = document.getElementById("glassfishversion");
	       if (appvalue.value == 'no app server') {
		      jbossver.style.display      ='none';
		      tomcatver.style.display     ='none';
		      glassfishver.style.display  ='none';
	       } else if (appvalue.value == 'jboss') {
		      jbossver.style.display      = 'initial';
		      tomcatver.style.display     = 'none';
		      glassfishver.style.display  = 'none';
	       } else if (appvalue.value == 'tomcat') {
	              tomcatver.style.display     = 'initial';
		      glassfishver.style.display  = 'none';
		      jbossver.style.display      = 'none';
	       } else if (appvalue.value == 'glassfish') {
		      glassfishver.style.display  = 'initial';
		      jbossver.style.display      ='none';
		      tomcatver.style.display     ='none';
       	       } else {
		       alert("WTF")
	       }
       }
function dbToggle(dbvalue) {
	       var mysqlver = document.getElementById("mysqlversion");
	       var postgresqlver = document.getElementById("postgresqlversion");
	       var sqlserverver = document.getElementById("sqlserverversion");
	       if (dbvalue.value == 'no database server') {
		      mysqlver.style.display          ='none';
		      postgresqlver.style.display     ='none';
		      sqlserverver.style.display      ='none';
	       } else if (dbvalue.value == 'mysql') {
		      mysqlver.style.display          = 'initial';
		      postgresqlver.style.display     = 'none';
		      sqlserverver.style.display      = 'none';
	       } else if (dbvalue.value == 'postgresql') {
	              postgresqlver.style.display     = 'initial';
		      mysqlver.style.display          = 'none';
		      sqlserverver.style.display      = 'none';
	       } else if (dbvalue.value == 'sqlserver') {
		      sqlserverver.style.display      = 'initial';
		      postgresqlver.style.display     ='none';
		      mysqlver.style.display          ='none';
       	       } else {
		       alert("WTF")
	       }
       }
function msgToggle(msgvalue) {
	       var rabbitmqver = document.getElementById("rabbitmqversion");
	       var activemqver = document.getElementById("activemqversion");
	       var zeromqver   = document.getElementById("zeromqversion");
	       if (msgvalue.value == 'no msg queue') {
		      rabbitmqver.style.display      ='none';
		      activemqver.style.display      ='none';
		      zeromqver.style.display        ='none';
	       } else if (msgvalue.value == 'rabbitmq') {
		      rabbitmqver.style.display      = 'initial';
		      activemqver.style.display      = 'none';
		      zeromqver.style.display        = 'none';
	       } else if (msgvalue.value == 'activemq') {
	              activemqver.style.display      = 'initial';
		      rabbitmqver.style.display      = 'none';
		      zeromqver.style.display        = 'none';
	       } else if (msgvalue.value == 'zeromq') {
		      zeromqver.style.display        = 'initial';
		      rabbitmqver.style.display      ='none';
		      activemqver.style.display      ='none';
       	       } else {
		       alert("WTF")
	       }
       }
