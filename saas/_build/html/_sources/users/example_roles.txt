Available Access Rights
-----------------------

**CONSOLE**

.. tabularcolumns:: |l|l|
+---------------+-------------------------------------------------------------------------------------+
| Access Right  | Effect                                                                              |
+===============+=====================================================================================+
| ANY           | Allows full access to the console.                                                  |
+---------------+-------------------------------------------------------------------------------------+
| ANY           | Allows full access to the console.                                                  |
+---------------+-------------------------------------------------------------------------------------+
| Access        | Allows read-only access to the Console, Automation, Infrastructure & Platform tabs. |
+---------------+-------------------------------------------------------------------------------------+
| CreateAPIKeys | This functionality will be added in a future release.                               |
+---------------+-------------------------------------------------------------------------------------+
| EditAccount   | Allows full access to the Company Settings & Account Settings tabs.                 |
+---------------+-------------------------------------------------------------------------------------+
| EditBilling   | Allows full access to the Finance > Billing Codes page.                             |
+---------------+-------------------------------------------------------------------------------------+
| ManageUsers   | Allows full access to the User Manager tab.                                         |
+---------------+-------------------------------------------------------------------------------------+
| ViewInvoices  | Allows full access to the Finance > Invoices page.                                  |
+---------------+-------------------------------------------------------------------------------------+
| ViewBilling   | Allows read-only access to the Finance > Billing Codes page.                        |
+---------------+-------------------------------------------------------------------------------------+

Deployment
~~~~~~~~~~

Note: To view Automation you need the access right CONSOLE-Access-ANY

.. tabularcolumns:: |l|l|
+----------------+------------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                   |
+================+==========================================================================================+
| ANY            | Allows full access to the Automation pages.                                              |
+----------------+------------------------------------------------------------------------------------------+
| Configure      | Gives you an actions > edit option for your deployments. However, does not give you      |
|                | access to view the edit page unless you have Deployment-Create rights.                   |
+----------------+------------------------------------------------------------------------------------------+
| Create         | Allows you to create new deployments and copy existing deployments (actions > copy). It  |
|                | also allows you to view the Edit page if you have Deployment-Configure rights.           |
+----------------+------------------------------------------------------------------------------------------+
| Delete         | Allows you to delete deployments.                                                        |
+----------------+------------------------------------------------------------------------------------------+
| Launch         | Allows you to launch deployments and services.                                           |
+----------------+------------------------------------------------------------------------------------------+
| ManageSsl      | This functionality will be added in a future release.                                    |
+----------------+------------------------------------------------------------------------------------------+
| Pause          | Allows you to stop running deployments and services.                                     |
+----------------+------------------------------------------------------------------------------------------+
| Resize         | Allows you to view the edit services page, but you are not allowed to save changes. You  |
|                | are allowed to create and edit data sources. Allows you to view the add server group and |
|                | add service pages, but does not allow you to create the new server groups and services   |
|                | when you click Save. You can create server groups if you add the                         |
|                | Deployment-Create access right. Also gives you an edit option for the server group(s)    |
|                | that Deployment-ManageUsers does not give you edit permissions for, and it does give     |
|                | you permission to view the edit screen and save your changes.                            |
+----------------+------------------------------------------------------------------------------------------+
| UploadImages   | Allows you to add/upload service images and data source images.                          |
+----------------+------------------------------------------------------------------------------------------+


**Important Combinations**

To edit a deployment - Cluster-Create & Cluster-Configure

To create a new server group - Cluster-Create & Cluster-Resize

To edit all server groups - Cluster-ManageUsers & Cluster-Resize

To create a new service - Cluster-Create, Cluster-Configure & Cluster-Resize

To edit a service - Cluster-Configure & Cluster-Resize

Distribution
~~~~~~~~~~~~

.. tabularcolumns:: |l|l|
+----------------+-----------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                  |
+================+=========================================================================================+
| ANY            | Allows full access to the Platform > Distributions page.                                |
+----------------+-----------------------------------------------------------------------------------------+
| Configure      | Gives you an edit option for your distributions. However, does not give you access to   |
|                | view the edit page unless you have Distribution-Create rights.                          |
+----------------+-----------------------------------------------------------------------------------------+
| Create         | Allows you to create a new distribution. You are not allowed to view or edit any other  |
|                | distribution.                                                                           |
+----------------+-----------------------------------------------------------------------------------------+
| Delete         | Allows you to deactivate/delete distributions.                                          |
+----------------+-----------------------------------------------------------------------------------------+


**Important Combination**

To edit a distribution - Distribution-Create & Distribution-Configure

Firewall
~~~~~~~~

.. tabularcolumns:: |l|l|
+----------------+-----------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                  |
+================+=========================================================================================+
| ANY            | Allows full access to the Infrastructure > Firewalls page.                              |
+----------------+-----------------------------------------------------------------------------------------+
| AddRule        | Allows you to add firewall rules if you have FIREWALL-EditRule & FIREWALL-Create.       |
+----------------+-----------------------------------------------------------------------------------------+
| Create         | Allows you to create new firewalls. Allows you to view the actions button.              |
+----------------+-----------------------------------------------------------------------------------------+
| Configure      | Allows you to change the color labels for firewalls.                                    |
+----------------+-----------------------------------------------------------------------------------------+
| Delete         | Allows you to delete firewalls and firewall rules if you have FIREWALL-EditRule &       |
|                | FIREWALL-Create.                                                                        |
+----------------+-----------------------------------------------------------------------------------------+
| EditRule       | Allows you to view the firewall rules if you have FIREWALL-Create.                      |
+----------------+-----------------------------------------------------------------------------------------+


**Important Combinations**

To View Firewall Rules - FIREWALL-EditRule & FIREWALL-Create

To Add A Rule - FIREWALL-AddRule, FIREWALL-EditRule & FIREWALL-Create

To Delete A Rule - FIREWALL-Delete, FIREWALL-EditRule & FIREWALL-Create

Image
~~~~~

.. tabularcolumns:: |l|l|
+-------------------------+-----------------------------------------------------------------------------------------+
| Access Right            | Effect                                                                                  |
+=========================+=========================================================================================+
| ANY                     | Allows full access to the Infrastructure > Machine Images page.                         |
+-------------------------+-----------------------------------------------------------------------------------------+
| Delete                  | Allows deletion of images that are not in use. Images are considered in use if there is |
|                         | a paused or running server that was launched from the image or if the image is being    |
|                         | used in a deployment (the deployment does not need to be running).                      |
+-------------------------+-----------------------------------------------------------------------------------------+
| DefineServer            | Allows launching of machine images from your account if your have Server-Start access.  |
|                         | Note: Does not allow you to search for or launch public images unless they have been    |
|                         | previously launched from your account.                                                  |
+-------------------------+-----------------------------------------------------------------------------------------+
| DefineServerFromPublic  | Allows searching for images. Allows launching of images in search results if you have   |
|                         | Server-Start access.                                                                    |
+-------------------------+-----------------------------------------------------------------------------------------+
| Configure               | Allows you to edit image names and color labels.                                        |
+-------------------------+-----------------------------------------------------------------------------------------+
| ShareLocal              | Allows sharing of images to other enStratus accounts.                                   |
+-------------------------+-----------------------------------------------------------------------------------------+
| SharePublic             | Allows images to be made public.                                                        |
+-------------------------+-----------------------------------------------------------------------------------------+


**Important Combination**

To Launch A Server - Image-DefineServer (or DefineServerFromPublic) & Server-Start

IP
~~

.. tabularcolumns:: |l|l|
+----------------+-----------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                  |
+================+=========================================================================================+
| ANY            | Gives you full access to Infrastructure > IP Addresses page. However, if IP addresses   |
|                | are already assigned you will not have access to them.                                  |
+----------------+-----------------------------------------------------------------------------------------+
| Assign         | Gives you access to assigning IP address.                                               |
+----------------+-----------------------------------------------------------------------------------------+
| Configure      | This functionality will be added in a future release.                                   |
+----------------+-----------------------------------------------------------------------------------------+
| Create         | Gives you access to reserve ip addresses.                                               |
+----------------+-----------------------------------------------------------------------------------------+
| Delete         | Gives you access to deleting released ip addresses.                                     |
+----------------+-----------------------------------------------------------------------------------------+
| Forward        | This functionality will be added in a future release.                                   |
+----------------+-----------------------------------------------------------------------------------------+
| StopForwarding | This functionality will be added in a future release.                                   |
+----------------+-----------------------------------------------------------------------------------------+

KVDB
~~~~

.. tabularcolumns:: |l|l|
+----------------+-----------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                  |
+================+=========================================================================================+
| ANY            | Gives you full access to all the actions on the Platform > Key/Value Databases page.    |
+----------------+-----------------------------------------------------------------------------------------+
| Configure      | This functionality will be added in a future release.                                   |
+----------------+-----------------------------------------------------------------------------------------+
| Create         | Gives you access to adding key/value databases.                                         |
+----------------+-----------------------------------------------------------------------------------------+
| Terminate      | Gives you access to terminating active key/value databases.                             |
+----------------+-----------------------------------------------------------------------------------------+

LB
~~

.. tabularcolumns:: |l|l|
+------------------+-----------------------------------------------------------------------------------------+
| Access Right     | Effect                                                                                  |
+==================+=========================================================================================+
| ANY              | Gives you full access to everything on the Infrastructure > Load Balancers page.        |
+------------------+-----------------------------------------------------------------------------------------+
| AddDataCenter    | Gives you access to the manage zones action.                                            |
+------------------+-----------------------------------------------------------------------------------------+
| AddListener      | This functionality will be added in a future release.                                   |
+------------------+-----------------------------------------------------------------------------------------+
| AddServer        | Gives you access to the manage servers action.                                          |
+------------------+-----------------------------------------------------------------------------------------+
| Configure        | This functionality will be added in a future release.                                   |
+------------------+-----------------------------------------------------------------------------------------+
| Create           | Gives you access to create load balancers.                                              |
+------------------+-----------------------------------------------------------------------------------------+
| Delete           | Gives you access to delete active load balancer.                                        |
+------------------+-----------------------------------------------------------------------------------------+
| EditListener     | This functionality will be added in a future release.                                   |
+------------------+-----------------------------------------------------------------------------------------+
| RemoveDataCenter | Gives you access to removing zones within manage zones.                                 |
+------------------+-----------------------------------------------------------------------------------------+
| RemoveServer     | Gives you access to removing servers within manage servers.                             |
+------------------+-----------------------------------------------------------------------------------------+

RDBMS
~~~~~

.. tabularcolumns:: |l|l|
+----------------+-----------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                  |
+================+=========================================================================================+
| ANY            | Gives you full access to everything in the Platform > Relational Databases page.        |
+----------------+-----------------------------------------------------------------------------------------+
| Configure      | This functionality will be added in a future release.                                   |
+----------------+-----------------------------------------------------------------------------------------+
| Create         | Gives you access to the add database action.                                            |
+----------------+-----------------------------------------------------------------------------------------+
| ManageNetwork  | Gives you access to the network access action.                                          |
+----------------+-----------------------------------------------------------------------------------------+
| Snapshot       | This functionality will be added in a future release.                                   |
+----------------+-----------------------------------------------------------------------------------------+
| Terminate      | Gives you access to terminating relational databases that are active.                   |
+----------------+-----------------------------------------------------------------------------------------+
| ChangePassword | Gives you access to changing passwords to relational databases that are active.         |
+----------------+-----------------------------------------------------------------------------------------+

Server
~~~~~~

.. tabularcolumns:: |l|l|
+----------------+-----------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                  |
+================+=========================================================================================+
| ANY            | Allows full access to the Infrastructure > Servers page                                 |
+----------------+-----------------------------------------------------------------------------------------+
| Configure      | Allows you to edit server names and server color labels. Allows you to view the info    |
|                | page.                                                                                   |
+----------------+-----------------------------------------------------------------------------------------+
| Image          | Allows imaging and snapshotting of servers.                                             |
+----------------+-----------------------------------------------------------------------------------------+
| ManageUsers    | Allows managing of which users have shell/remote access and which users have admin      |
|                | access.                                                                                 |
+----------------+-----------------------------------------------------------------------------------------+
| Pause          | Allows pausing of running servers. Allows rebooting of server if you have Server-Start. |
+----------------+-----------------------------------------------------------------------------------------+
| Prepay         | This functionality will be added in a future release.                                   |
+----------------+-----------------------------------------------------------------------------------------+
| Start          | Allows starting of paused servers. Allows rebooting of servers if you have Server-Pause.|
|                | Allows launching of servers if you have Image-DefineServer or DefineServerFromPublic.   |
+----------------+-----------------------------------------------------------------------------------------+
| Terminate      | Allows terminating of servers.                                                          |
+----------------+-----------------------------------------------------------------------------------------+


**Important Combinations**

To Launch A Server - Image-DefineServer (or DefineServerFromPublic) & Server-Start

To Reboot A Server - Server-Pause & Server-Start

Snapshot
~~~~~~~~

.. tabularcolumns:: |l|l|
+----------------+-----------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                  |
+================+=========================================================================================+
| ANY            | Gives you full access to everything in the Infrastructure > Snapshots page.             |
+----------------+-----------------------------------------------------------------------------------------+
| Configure      | This functionality will be added in a future release.                                   |
+----------------+-----------------------------------------------------------------------------------------+
| CreateVolume   | Allows you to perform the "create volume" action on the Infrastructure > Snapshots page |
|                | and the Automation > Backups page. Also allows you to perform the "restore" option from |
|                | the Automation > Backups page.                                                          |
+----------------+-----------------------------------------------------------------------------------------+
| Delete         | Allows you to delete snapshots using the delete action on the Infrastructure > Snapshots|
|                | page and the remove action on the Automation > Backups page.                            |
+----------------+-----------------------------------------------------------------------------------------+
| ShareLocal     | Allows you to make a snapshot private or share the snapshot with another enStratus      |
|                | account from the Infrastructure > Snapshots and Automation > Backups pages.             |
+----------------+-----------------------------------------------------------------------------------------+
| SharePublic    | Allows you to make a snapshot public from the Infrastructure > Snapshots and Automation |
|                | > Backups pages.                                                                        |
+----------------+-----------------------------------------------------------------------------------------+

Topic
~~~~~

.. tabularcolumns:: |l|l|
+----------------+-----------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                  |
+================+=========================================================================================+
| ANY            | Gives you full access to all the actions in the Platform > Notification Topics page.    |
+----------------+-----------------------------------------------------------------------------------------+
| Create         | Gives you access to adding topics.                                                      |
+----------------+-----------------------------------------------------------------------------------------+
| Publish        | Gives you access to publishing topics.                                                  |
+----------------+-----------------------------------------------------------------------------------------+
| Subscribe      | Gives you access to subscribing to active topics.                                       |
+----------------+-----------------------------------------------------------------------------------------+
| Remove         | Gives you acces to removing active topics.                                              |
+----------------+-----------------------------------------------------------------------------------------+

Volume
~~~~~~

.. tabularcolumns:: |l|l|
+----------------+-----------------------------------------------------------------------------------------+
| Access Right   | Effect                                                                                  |
+================+=========================================================================================+
| ANY            | Gives you full access to everything in the Infrastructure > Volumes page.               |
+----------------+-----------------------------------------------------------------------------------------+
| Attach         | Gives you access to attaching volumes.                                                  |
+----------------+-----------------------------------------------------------------------------------------+
| Configure      | This functionality will be added in a future release.                                   |
+----------------+-----------------------------------------------------------------------------------------+
| Create         | Gives you access to creating volumes.                                                   |
+----------------+-----------------------------------------------------------------------------------------+
| Delete         | Gives you access to delete volumes.                                                     |
+----------------+-----------------------------------------------------------------------------------------+
| Detach         | Gives you access to detach volumes.                                                     |
+----------------+-----------------------------------------------------------------------------------------+
| Snapshot       | Gives you access to making snapshots of volumes.                                        |
+----------------+-----------------------------------------------------------------------------------------+

Example Roles
-------------

The following four roles are examples you can implement in your enStratus account. The Admin role is created in every enStratus account by default. You can customize these roles or create your own.


**Admin** - Has full access over the entire system.

.. tabularcolumns:: |l|l|l|
+----------+--------+-----------+
| Resource | Action | Qualifier |
+==========+========+===========+
| ANY      | ANY    | ANY       |
+----------+--------+-----------+

|

**CloudManager** - Can manage all aspects of a cloud environment, but no account management.

.. tabularcolumns:: |l|l|l|
+--------------+--------+-----------+
| Resource     | Action | Qualifier |
+==============+========+===========+
| ANY          | ANY    | ANY       |
+--------------+--------+-----------+
| CONSOLE      | Access | ANY       |
+--------------+--------+-----------+
| CLUSTER      | ANY    | ANY       |
+--------------+--------+-----------+
| DISTRIBUTION | ANY    | ANY       |
+--------------+--------+-----------+
| FIREWALL     | ANY    | ANY       |
+--------------+--------+-----------+
| IMAGE        | ANY    | ANY       |
+--------------+--------+-----------+
| IP           | ANY    | ANY       |
+--------------+--------+-----------+
| LB           | ANY    | ANY       |
+--------------+--------+-----------+
| SERVER       | ANY    | ANY       |
+--------------+--------+-----------+
| SNAPSHOT     | ANY    | ANY       |
+--------------+--------+-----------+
| VOLUME       | ANY    | ANY       |
+--------------+--------+-----------+

|

**Configurator** - Can edit configurational elements that have no economic impact.

.. tabularcolumns:: |l|l|l|
+--------------+-----------+-----------+
| Resource     | Action    | Qualifier |
+==============+===========+===========+
| CONSOLE      | Access    | ANY       |
+--------------+-----------+-----------+
| CLUSTER      | Configure | ANY       |
+--------------+-----------+-----------+
| DISTRIBUTION | Configure | ANY       |
+--------------+-----------+-----------+
| FIREWALL     | Configure | ANY       |
+--------------+-----------+-----------+
| IMAGE        | Configure | ANY       |
+--------------+-----------+-----------+
| IP           | Configure | ANY       |
+--------------+-----------+-----------+
| LB           | Configure | ANY       |
+--------------+-----------+-----------+
| SERVER       | Configure | ANY       |
+--------------+-----------+-----------+
| SNAPSHOT     | Configure | ANY       |
+--------------+-----------+-----------+
| VOLUME       | Configure | ANY       |
+--------------+-----------+-----------+

|

**CSR** - Has read-only access to the entire system.

.. tabularcolumns:: |l|l|l|
+----------+--------+-----------+
| Resource | Action | Qualifier |
+==========+========+===========+
| CONSOLE  | Access | ANY       |
+----------+--------+-----------+

