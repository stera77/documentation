mount
~~~~~

Name
++++

mount - It mounts a storage device at a directory. 

Description
+++++++++++

It mounts a storage device at a directory. Additional the mount point will be added to the /etc/fstab file so it is mounted automatically on server restart.

Usage
+++++

mount DEVICE_ID FILE_SYSTEM MOUNT_POINT


DEVICE_ID
	Last part of the Linux device name (ie sdh for /dev/sdh or data for /dev/mapper/data ) . Generally this parameter is obtained automatically from the cloud provider.

FILE_SYSTEM
	File system of the volume to be mounted. It is required to add the mount point to the /etc/fstab file.

MOUNT_POINT
	Empty directory where the volume will be mounted


Invocation
++++++++++

This script is called when:

* If a volume is created when manually launching a server from the Machine Images page. In this case the mount point and file system can be set by the user.
* A Volume is attached to a server in the Volume list page, and the option Automount is selected
* When a server is launched within a deployment and its Launch Configuration has been set to automatically create a volume. In this case volume is mounted in /mnt/services and given a xfs filesystem.

Dependencies
++++++++++++

* sudo
* Kernel modules required for mounting the filesystem

Permissions
+++++++++++

It is launched by the enstratus user. It needs sudo authority for mounting a filesystem and editing the /etc/fstab file. User enstratus will own the mount point and will be writeable by the user and group enstratus.


Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
