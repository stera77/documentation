addUser
~~~~~~~

NAME
++++

addUser - Grants the specified user shell access to the server

SYNOPSIS
++++++++

addUser CUST_ID USER_ID FIRST_NAME LAST_NAME ADMINISTRATOR

DESCRIPTION
+++++++++++

It creates a system user for Linux/Unix servers. It can be created as a regular non-privileged user or as an administrative one that can use sudo to gain root privileges . Additionally enStratus copies user's public key to ~/.ssh/authorized_keys to allow secure passwordless authentication.


OPTIONS
+++++++

CUST_ID
	Customer id within enStratus. It is used as the Linux primary group for the new the user.

USER_ID
	User name to be created. User Ids in enStratus follow the pattern pXXX, where XXX is a numeric sequence.

FIRST_NAME
	First name of the user according to his/her profile

LAST_NAME
	Last name of the user according to his/her profile.

ADMINISTRATOR
	If set to "true" the user will have administrative privileges via sudo.

INVOCATION
++++++++++

This script is called when a user is added manually to a running server using the Shell Access control in the Servers list.


DEPENDENCIES
++++++++++++

* sudo
* useradd / usermod
* openssl for automatically generating a strong password.

PERMISSIONS
+++++++++++

It is launched by the enStratus user. It needs sudo authority for creating the user.


OVERRIDES
+++++++++

Override: Yes, pre and post

Replace: Yes
