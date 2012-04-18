Firewalls
---------
Firewalls, or security groups, in enStratus control accessibility to running servers. Each
account has a firewall called 'default' that is the default firewall into which all
servers are launched.

.. note:: The terms firewall and security group are interchangeable in enStratus.

Security groups are applied to servers. Servers are part of security groups. A server is
added to a security group at the time of server start. It is not currently possible to
change the security group of a server post-launch. This is far less of a limitation than
it sounds because the individual rules that comprise a security group can be changed at
any time.

.. figure:: ./images/securityGroups.png
   :height: 300px
   :width: 500 px
   :scale: 95 %
   :alt: Security Groups
   :align: center

   Security Groups

Generally, the process for managing firewalls is to first create the security group and
then choose a security group into which servers will be launched at start.

To access firewalls in the enStratus console, navigate to Infrastructure > Firewalls. A
listing of the active firewalls will be shown. To add a new firewall, click on the
+create_firewall. Only two pieces of information are required to create a firewall: A
name, billing code, and an optional group.

.. figure:: ./images/createFirewall.png
   :height: 250px
   :width: 500 px
   :scale: 75 %
   :alt: Create Security Group
   :align: center

   Create Security Group

Once the firewall has been saved, it will be added to the list of active firewalls. Once
the firewall is active, it will be provided as an option when launching new servers.

Editing Firewalls
~~~~~~~~~~~~~~~~~
To edit an existing firewall, select the green action button that corresponds to the
firewall targeted for editing. A dialog box will appear showing the rules that comprise
the firewall.

The six columns that make up the firewall are:

1. Source - A common name for the firewall rule. Standard networks naming conventions apply
to this column. If a standard network is used, the CIDR column will be automatically
populated with the information defined by that standard network.

2. CIDR - CIDR means Classless Inter-Domain Routing. Practically, this means / or "slash"
notation is required. For example, to apply a rule to only one IP address, the rule takes
the form: 1.2.3.4/32. This is practical for creating a rule for your home IP address. This
type of notation allows for firewall rules that encompass ranges of IP addresses. For
example, to apply a rule to a range of 256 IP addresses, this represents a rule of the
form: 1.2.3.0/24. This is a very powerful feature of firewall rule creation.

3. Method - Refers to the program being used, and provides a common name for the program. For
example, MySQL or SSH. Standard ports can be used to modify this part of the ruleset.
Protocol, From Port and To Port are automatically populated with the information provided
by that standard port.

4. Protocol - Indicates the type of protocol that will apply, TCP, UDP, or ICMP.

5. From Port - The starting port for the rule.

6. To Port - The ending port for the rule.

Standard Networks and Ports
~~~~~~~~~~~~~~~~~~~~~~~~~~~
enStratus introduces the concept of a standard network to firewalls. A standard network is
a user-defined commonly used network that can be quickly added to a firewall using a
common name that maps to the IP address specified. This functionality creates the
advantage of being able to easily identify, add, and remove specific firewall rules among
what may be a long list of rules.

For example, if a user typically conncects from a particular office IP address, this
address should be added as a standard network and named appropriately for ease of
identification.

Similarly, standard ports are user-defined commonly used ports that typically map to a
specific application. For example, if an application is required to allow connections on
port 5555, a standard port can be defined to identify that application by a common name
and add it to the firewall.

Standard networks are defined in Company Settings > Standard Networks. Every enStratus
account has some default rules defined in a default firewall to allow for the enStratus
monitoring service to connect to running servers. To define a new standard network, select
+add_new_standard_network and complete the resulting dialog box.

.. figure:: ./images/addStandardNetwork.png
   :height: 300px
   :width: 400 px
   :scale: 95 %
   :alt: Standard Network
   :align: center

   Standard Network

Once the standard network is saved, it will be added to the list of standard networks.

Before we return to editing the firewalls, let's define a standard port. Navigate to
Company Settings > Standard Ports. To add a new standard port, select
+add_new_standard_port and complete the resulting dialog box.

.. figure:: ./images/addStandardPort.png
   :height: 300px
   :width: 400 px
   :scale: 95 %
   :alt: Standard Port
   :align: center

   Standard Port

Once the standard port is saved, it will be added to the list of standard ports.

Returning again to editing firewalls, the new standard network called Office IP and the
standard port called Custom Application can be quickly added to any of the existing
firewalls.

.. figure:: ./images/editFirewall.png
   :height: 160px
   :width: 900 px
   :scale: 75 %
   :alt: Edit Firewall Using Standard Port
   :align: center

   Edit Firewall Using Standard Port

.. note:: If a standard network or port is deleted, the rule will still be applied to the
  firewalls, it will only lose the customized name that was given and revert to a Custom
  rule.

Starting a Server in Security Group
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The final step in utilizing firewalls in the cloud is to apply a firewall group when
starting a new server. To start a new server, navigate to Infrastructure > Machine Images.
Select an image to launch and in the resulting dialog box, choose the security group to be
applied to the resulting server. All of the rules comprising the security group will be
applied to the server.

.. figure:: ./images/startServerinFirewall.png
   :height: 400px
   :width: 500 px
   :scale: 85 %
   :alt: Start Server in Firewall
   :align: center

   Start Server in Firewall
