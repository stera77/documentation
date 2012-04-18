listDevices
~~~~~~~~~~~

Synopsis
++++++++

listDevices - List all devices currently mounted for the machine

Description
+++++++++++
Print a list of mounted partitions, file system, total and used capacity.

Examples
++++++++

.. code-block:: sh

	$ listDevices
	/dev/sda1 ext3 / 15481840 4471396
	/dev/sdb ext3 /mnt 433455904 22485176
	/dev/sdh xfs /mnt/services 34578536 13631816



Invocation
++++++++++

It is called by the enstratus provisioning server to display information about the server volumes


Dependencies
++++++++++++

* None


Permissions
+++++++++++

It is launched by the enstratus user.


Overrides
+++++++++

Override: No

Replace: No
