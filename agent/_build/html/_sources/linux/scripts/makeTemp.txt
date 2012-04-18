makeTemp
~~~~~~~~

Name
++++
makeTemp -  Shell script to setup the enStratus temp directory

Synopsis
++++++++
makeTemp

Description
+++++++++++
It creates /mnt/tmp folder and gives ownership to the enstratus user and group, preventing access to other users

Options
+++++++

None

Examples
++++++++
.. code-block:: sh

	$ makeTemp 
	

Invocation
++++++++++

Dependencies
++++++++++++
* sudo

Permission
++++++++++

Run by the enstratus user. It needs sudo to create the temp folder and assign the correct ownership and permission.

Overrides
+++++++++

Override: No

Replace: No
