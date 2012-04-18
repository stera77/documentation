configureService
~~~~~~~~~~~~~~~~

Name
++++

configureService ~ Launcher for service-specific configuration script

Synopsis
++++++++

configureService USER_ID CUSTOMER_ID SERVICE_ID [[ SSL_ADDRESS CERT_FILE_PATH KEY_FILE_PATH ] CHAIN_FILE_PATH ]

Description
+++++++++++

enStratus invokes the script /mnt/services/$SERVICE_ID/bin/enstratus-configure, if it exists, to run a service specific configuration script


Options
+++++++

USER_ID
	User under whose authority the service configuration process will run. It can be set in the configuration of the service, otherwise enStratus will assign one.

CUSTOMER_ID
	Customer id within enStratus. 

SERVICE_ID
	ID of the service to be configured. It's provided by enStratus. Service images are stored in /mnt/services/$SERVICE_ID

SSL_ADDRESS
	When using a SSL certificate, the fully qualified name associated to the certificate

CERT_FILE_PATH
	When using a SSL certificate, the path to a temporary file containing the certificate file.
	
KEY_FILE_PATH
	When using a SSL certificate, the path to a temporary file containing its private key
	
CHAIN_FILE_PATH
	Path of a file containing additional CA certificated that may be required to validate the certificate.
	
Examples
++++++++

configureService c100 c100 a12000


Invocation
++++++++++

This script is called automatically by enStratus if the service needs to be configured in that server.


Dependencies
++++++++++++

* None

Permission
++++++++++

It is launched by the enStratus user.


Overrides
+++++++++

Override: No

Replace: No
