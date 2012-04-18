backupService
~~~~~~~~~~~~~

Name
+++++
backupService ~ Backs up the target service.

Synopsis
++++++++

backupService SERVICE_ID FILE_PATH

Description
+++++++++++

enStratus invokes the script /mnt/services/$SERVICE_ID/bin/enstratus~backupService, if it
exists, to backup a service. enstratus-backupService is usually an ad-hoc script meant to backup an specific kind of service.


Options
+++++++

SERVICE_ID
	ID of the service to be backed up. It's provided by enstratus. Service images are stored in /mnt/services/$SERVICE_ID

FILE_PATH
	Temporary file name to be used to store the backup. After a successful backup enstratus will upload the file to the configured cloud storage.

Examples
++++++++

backupService a123 /mnt/tmp/123-testservice-YYYYMMDD-ID.zip


Invocation
++++++++++

This script is called automatically by enstratus if the Service has been set for periodic backups, according to the configured frequency.


Dependencies
++++++++++++

* None

Permission
++++++++++

It is launched by the enstratus user.


Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
