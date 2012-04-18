grantDatabaseAccess
~~~~~~~~~~~~~~~~~~~


Name
++++
grantDatabaseAccess - Triggers a service-specific script for granting database access to a client.

Synopsis
++++++++

grantDatabaseAccess SERVICE_ID CONFIG_FILE 

Description
+++++++++++

It invokes the script /mnt/services/$SERVICE_ID/bin/enstratus-dbgrant , if existent, to allow access to a database from another server


Options
+++++++

SERVICE_ID
	ID of the service. It's provided by enstratus. Service images are stored in /mnt/services/$SERVICE_ID


CONFIG_FILE
	Configuration file provided by enstratus. It contains information required to grant access to a data source, like the remote server IP, database name and credentials .


Examples
++++++++

grantDatabaseAccess a123 /enstratus/ws/tomcat/temp/database6625343243682788319.cfg


Invocation
++++++++++

This script is called automatically by enstratus during a deployment for any new server in a service depending of a Data Source


Dependencies
++++++++++++

* None

Permission
++++++++++

It is launched by the enstratus user.


Overrides
+++++++++

Override: No

Replace: No
