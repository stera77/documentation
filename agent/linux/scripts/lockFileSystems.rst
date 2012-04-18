lockFileSystems
~~~~~~~~~~~~~~~

Name
++++
lockFileSystems -  Locks all mounted XFS partitions

Synopsis
++++++++
lockFileSystems

Description
+++++++++++
It prevents access to all mounted XFS partitions using the xfs_freeze tool as a required step for creating volume snapshots.

Options
++++++++

None

Examples
++++++++
.. code-block:: sh

	$ lockFileSystems 
	

Invocation
++++++++++

It is called by volume snapshot scripts

Dependencies
++++++++++++
* sudo
* xfs_freeze

Permission
++++++++++

Run by the enstratus user. It needs sudo to run the xfs_freeze command

Overrides
+++++++++

Override: No

Replace: No
