format
~~~~~~

Function
++++++++

It creates a filesystem in a given physical or logical storage volume. Additionally it adds an entry for that volume in /etc/fstab so the volume can be mounted easily. Actual volume mount is performed by the mount script.


Usage
+++++

format DEVICE_ID FILE_SYSTEM MOUNT_POINT ENCRYPTED


DEVICE_ID
	Last part of the Linux device name (ie sdh for /dev/sdh or data for /dev/mapper/data ) . Generally this parameter is obtained automatically from the cloud provider.

FILE_SYSTEM
	File system to be created. Most popular Linux filesystems are available (xfs,ext2,ext3,ext4) provided the server image includes support for them. By default enstratus will use xfs

MOUNT_POINT
	Empty directory where the formatted volume will be mounted

ENCRYPTED
	Whether or not the volume has been decrypted by enstratus. That is required to find the correct device name and set suitable options in /etc/fstab


Invocation
++++++++++

This script is called when:

* If a volume is created when manually launching a server from the Machine Images page. In this case the mount point and file system can be set by the user.
* When a server is launched within a deployment and the launch configuration has been set to automatically create a volume. In this case volume is mounted in /mnt/services and given a xfs filesystem.

Dependencies
++++++++++++

* sudo
* mkfs utility for the selected filesystem, that's is mkfs.xfs for XFS support, mkfs.ext3 for ext3
* Kernel modules required for mounting the filesystem

Permission
++++++++++

It is launched by the enstratus user. It needs sudo authority for creating a filesystem and editing the /etc/fstab file.


Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
