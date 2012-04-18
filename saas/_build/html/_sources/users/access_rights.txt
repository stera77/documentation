Access Rights
-------------

**The real power of the enStratus user security approach is unlocked when working with
Roles.**

Roles control user access to the enStratus console. Roles are assigned to Groups in a
one-to-one relationship. Each role contains a customizable collection of access rights.
Each access right provides access to a certain element of the enStratus console.

Terms
~~~~~

**RESOURCE:** 

Every page, link and action in the enStratus console is controlled by at
least one resource. In most cases, resources correspond to pages. For example, access to
the actions available on the Machine Images page is controlled by the IMAGE resource and
access to the actions available on the Servers page is controlled by the SERVER resource.
Read access and account administration is controlled by the CONSOLE resource.

**ACTION:** 

Resources are divided into actions. If you want access to all actions within a
resource use the ANY action. If you want the role to have more granular permissions select
the specific actions you want users to be able to perform. For example, if you want users
with your role to be able to start deployments and services add the Deployment-Launch action.
Some console actions require multiple resource-action pairs. These are documented in the
Important Combinations sections for each resource.

**QUALIFIER:** 

There are five different qualifiers: ANY, GROUP, THIS GROUP, BILLING, and
MINE. These represent ownership of resources such as servers and machine images. For exam-
ple, when a user launches a server they can associate it with a group and a billing code.
The server that is launched is owned by the group and billing code assigned to it and the
user who launched it. With access rights you can limit access to the server to users who
belong to the group you chose, the chosen billing code, or the user who launched the
server.

If you want users in your role to have access to all servers you can use the ANY
qualifier. For some resources, such as console and firewall, the group, this group,
billing, and mine qualifiers have no meaning because there is no ownership associated with
the resource. In these cases you should always use ANY when adding access rights.

Note: Ownership of some resources are still under development.

Roles Example
~~~~~~~~~~~~~

You have three servers with the following ownership:

.. tabularcolumns:: |l|l|l|l|
+----------+------------+--------------+---------------+
| Resource | User Group | Budget Code  | Owner         |
+==========+============+==============+===============+
| Server 1 | QA         | Default      | Johnson, Erik |
+----------+------------+--------------+---------------+
| Server 2 | Dev        | Default      | Hoffman, Jeff |
+----------+------------+--------------+---------------+
| Server 3 | Dev        | Imaging      | Moselle, Greg |
+----------+------------+--------------+---------------+

|

*Objective* 

You are adding an access right to your QA Role, which is associated with your
QA Group, using the resource SERVER and the action Image. This is what each qualifier will
allow members of the QA group to do:

**ANY**   

QA users can image Server 1, Server 2, and Server 3.

**GROUP**   

QA users can image Server 1. They can image Server 2 and Server 3 if they are
also members of the Dev group.

**THIS_GROUP**  

QA users can only image Server 1.

**BILLING** 

QA users can image Server 1 and Server 2 if they are associated with the
Default billing code. They can image Server 3 if they are associated with the Imaging
billing code.

**MINE**  

Erik can image Server 1, Jeff can image Server 2, and Greg can image Server 3.
