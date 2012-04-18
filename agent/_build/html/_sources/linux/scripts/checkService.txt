checkService
~~~~~~~~~~~~

Name
+++++
checkService - This script is used to determine the "health" of a service

Synopsis
++++++++

checkService SERVICE_ID

Description
+++++++++++
This script is used to determine the "health" of a service. It is meant to be user-extensible. The way to use this script is to write a script called
enstratus-check and put it in the /bin directory of your service image.
The enStratus provisioning server will call this script during the launch of the service. If the script returns a code of "OK", the service will be
marked as running. If not, it will be marked as impaired.


Options
+++++++

SERVICE_ID
	ID of the service to be checked. It's provided by enstratus. Service images are stored in /mnt/services/$SERVICE_ID


Examples
++++++++

checkService a123


Invocation
++++++++++

This script is called automatically by enstratus during the launch of the service


Dependencies
++++++++++++

* None

Permission
++++++++++

It is launched by the enstratus user.


Overrides
+++++++++

Override: No

Replace: Yes
