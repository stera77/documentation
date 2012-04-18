Servers
-------
enStratus monitors all servers in your account. Use the green actions button to access
your server. If the enStratus agent is not installed on the server, the options available
are limited to getting information, rebooting, pausing/starting, or terminating the
server. If the enStratus agent is installed on a running server, additional functionality
is included in the actions menu.  

Expanded information 
~~~~~~~~~~~~~~~~~~~~
* Info: Expanded information regarding server attributes. Including comprehensive hardware information such as logical volumes attached, filesystems used, encryption, and memory.
* Analytics: A graphical representation of CPU Load (in %) over the last hour.
* Console: Hypervisor information.
* Agent: Agent logging capturing events such as adding/removing users, Host Intrusion Detection System alerts, and customizable information messages. 

Make Image
~~~~~~~~~~
Making a machine image means making a saved copy of the server state for future use.
Machine images will show up in the tab. Machine images should be made whenever changes are
made to the operating system such as patches or updates. 

Make Snapshot
~~~~~~~~~~~~~
Making a snapshot means create a differential backup of any attached volumes. 

Shell/Remote Access
~~~~~~~~~~~~~~~~~~~

Shell (Linux) and remote (Windows) access refers to creating user accounts on running
servers. Each user in enStratus is assigned a user code of the form p123. When remote
access is granted on a Linux server, a home user account is created on that server and the
public ssh credentials defined in the enStratus user profile are set for the user. On
Windows, a home account is created and the user can access the running server using the
RDP password set in the enStratus profile.

.. note:: Before granting shell/remote access to a server, the user must define their
  public ssh key and RDP password in their user profile. If the credentials change, the
  remote servers are not notified of the change. To ensure the new credentials are used, the
  user must first be removed and re-added to remote access so the changes can propagate to
  their account. 

Reboot
~~~~~~
Reboot the running server. Rebooting does not change the IP address of the server. 

Pause
~~~~~
Pause the running server. enStratus still monitors the server. IP address will change upon starting. 

Terminate
~~~~~~~~~
Terminate the instance. No data on the instance will be saved. 

To rename a running server, click on the server name indicated by a brown dashed line. A
text window will appear. Enter the desired name and select OK. The hostname of the server
will be changed.

To change the label color of a running server, click on the label color and choose the
desired color from the resulting choices.
