Additional Information
----------------------

Updating
^^^^^^^^

Updating the agent on a Ubuntu/Debian server can be accomplished by using the .deb
package. The installation routine will detect previously installed versions and do a
backup, preserving any customizations by preserving the contents of the
/enstratus/custom/bin directory.

Extending the Agent
^^^^^^^^^^^^^^^^^^^

Agent scripts are designed to be extended and customized. The scripts located in
/enstratus/bin are not designed to be edited directly as these scripts are overwritten
during an upgrade. Instead, use the /enstratus/custom/bin directory to run custom scripts
before, in place of, and/or after the provided scripts.

To run a script before the default enStratus script, place a script called $scriptName-pre
in the /enstratus/custom/bin directory. To run a script in place of the default enStratus
script, place a script of the same name in the /enstratus/custom/bin directory. To run a
script after the default enStratus script, place a script called $scriptName-post in the
/enstratus/custom/bin directory.

For example to modify the /enstratus/bin/addUser script do the following:

/enstratus/custom/bin/addUser - if exists, will completely replace this script 

/enstratus/custom/bin/addUser-pre - if exists, will be executed before this script 

/enstratus/custom/bin/addUser-post - if exists, will be executed after this script

Starting from Scratch
^^^^^^^^^^^^^^^^^^^^^

At enStratus we use the EC2 images supplied by Alestic www.alestic.com with success. The
.deb installer has been tested with the latest releases of Ubuntu (10.04) and Debian
(5.0).

The installation process should work on most flavors of Ubuntu and Debian, if you have
trouble installing on your own, please contact support at enStratus.
