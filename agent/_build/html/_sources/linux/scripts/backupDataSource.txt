backupDataSource
~~~~~~~~~~~~~~~~

Name
++++
backupDataSource ~ Dumps a data source to the specified file location

Synopsis
++++++++
Language: Bash
backupDataSource SERVICE_ID DATA_SOURCE CONFIG_FILE FILE_PATH

Description
+++++++++++

It invokes the script /mnt/services/$SERVICE_ID/bin/enstratus-backupDataSource , if existent, to backup a Data Source. enstratus~backupDataSource is usually an ad~hoc script meant to backup an specific kind of data source, for example using mysqldump for MySQL databases, pgdump for PostGRESQL, etc.


Options
++++++++

SERVICE_ID
	ID of the service to be backed up. It's provided by enstratus. Service images are stored in /mnt/services/$SERVICE_ID

DATA_SOURCE	
	Name of the datasource to be backed up. 

CONFIG_FILE
	Configuration file provided by enstratus. It contains information required to perform the backup, such as credentials.

FILE_PATH
	Temporary file name to be used to store the backup. After a successful backup enstratus will upload the file to the configured cloud storage.

Examples
++++++++

backupDataSource a123 testds /mnt/services/a123/cfg/enstratus.cfg /mnt/tmp/123~testds~YYYYMMDD~ID.zip


Invocation
++++++++++

This script is called automatically by enstratus if the Data Source has been set for periodic backups, according to the configured frequency.


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
