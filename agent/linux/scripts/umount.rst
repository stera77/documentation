umount
~~~~~~

Name
++++

umount - It umounts any filesystem mounted at a given folder 


Synopsis
+++++++

umount MOUNT_POINT

Description
+++++++++++

It umount any filesystem mounted at MOUNT_POINT . Aditionally it removes any related entry in /etc/fstab.

Options
+++++++

MOUNT_POINT
	Directory to be unmounted


Invocation
++++++++++

This script is called when:

* A Volume is dettached from server in the Volume list page.

Dependencies
++++++++++++

* sudo


Permissions
+++++++++++

It is launched by the enstratus user. It needs sudo authority for umounting a device. 


Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
