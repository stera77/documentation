removeUser
~~~~~~~~~~
k
Name
++++

removeUser - Removes shell access for the specified user.

Synopsis
++++++++

removeUser USER_ID

Description
+++++++++++

It removes a system user account from Linux/Unix servers.


Options
+++++++

USER_ID
	User name to be created. User Ids in enStratus follow the pattern pXXX, where XXX is a numeric sequence.


Invocation
++++++++++

This script is called when a user is removed manually from a running server using the Shell Access control in the Servers list.


Dependencies
++++++++++++

* sudo
* userdel

Permissions
+++++++++++

It is launched by the enStratus user. It needs sudo authority for deleting the user.


Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
