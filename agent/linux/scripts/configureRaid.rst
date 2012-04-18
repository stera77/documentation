configureRaid
~~~~~~~~~~~~

configureRaid - Creates RAID devices

Synopsis
++++++++

configureRaid DEVICE_ID VOLUMES...

Description
+++++++++++

It creates a RAID device from a list of storage devices. Currently only RAID 0 (striped) volumes are supported 

Options
+++++++

DEVICE_ID
	Last part of the Linux device name for the RAID device to be created (md0 for /dev/md0 by default)

VOLUMES	
	List of devices to be added to the RAID volume

Examples
++++++++

/enstratus/bin/configureRaid md0 sdh sdi sdj
	Creates the RAID 0 device /dev/md0 from volumes /dev/sdh, /dev/shi and /dev/sdj


Invocation
++++++++++

This script is called when:

* If a volume is created when manually launching a server from the Machine Images page and a RAID Level other that None is selected.


Dependencies
++++++++++++

* sudo
* mdadm
* md kernel module

Permission
+++++++++++

It is launched by the enstratus user. It needs sudo authority for creating the array


Overrides
+++++++++

Override: Yes, pre and post


Replace: Yes
