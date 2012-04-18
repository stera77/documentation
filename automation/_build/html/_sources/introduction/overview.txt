Overview
========

Before embarking on cloud automation using enStratus, let's cover some terminology and
concepts enStratus uses to automate and orchestrate cloud operations. The purpose of this
section is to introduce at an academic level the components of an enStratus deployment.

Start at the End
----------------
A properly configured enStratus deployment is shown below. Each of the functional
components will be introduced in turn.

.. figure:: ./images/deployment7.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: enStratus Deployment
   :align: center

   enStratus Deployment

The fully operational enStratus deployment is a mechanism for deploying, orchestrating,
and automating an n-tier application. The above figure shows a 3-tier deployment, running
in two separate clouds with load balancing and a web application that depends on a
database. Let's build the deployment from the ground up.

Takeaway Points
---------------
#. A deployment is a logical grouping of tiers, services, and launch configurations. Resources provisioned as part of a deployment are "special" in the sense that they are subject to the governing rules set by the user.
#. Tiers are logical groupings of servers.
#. Services are software packages that are tied to tiers. 
#. Services can have datasources passed to them and can depend on each other, or each other's datasources.
#. Dependencies tell enStratus how to orchestrate service installation and what information is appropriate to pass to each VM.
#. Launch Configurations define the size of the VM, volumes, configuration management, and firewalls for each server.
#. As servers are started, enStratus orchestrates the installation of services and datasources according to their dependency relationships.

The Deployment
--------------
.. figure:: ./images/deployment1.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: enStratus Deployment
   :align: center

   enStratus Deployment

An enStratus deployment is a container enStratus uses to manage all of moving parts of an
aribtrarily complex application. The resources running in the deployment are subject to
the constraints the deployment architect places on it, such as when to scale, when backups
are run, and what relationships exist between deployment components.

The deployment itself needs only a name, this initializes the deployment environment for
the rest of the build. The first component added to this deployment is called a tier.

A place holder for adding a load balancer is automatically generated.

Add First Tier
--------------
An enStratus tier is a component that can have services (software) tied to it. The tier
layer is where attributes such as minimum/maximum servers and scaling rules are set.

In assembling the deployment, the first thing to do after creating the new deployment is
to add tiers. 

.. figure:: ./images/deployment2.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Tier Added
   :align: center

   Tier Added

Adding the first tier prompts enStratus to create a placeholder for a launch
configuration. 

Add Second Tier
---------------
Next we add another tier to bring a more classic 3-tier architecture more clearly into
view. A launch configuration will be automatically generated as a placeholder for the
second tier.

Once the tiers are in place, it's time to start adding services to them.

.. figure:: ./images/deployment3.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Second Tier Added
   :align: center

   Second Tier Added

Add Services
------------
Services are connected to a deployment at the tier level. Put simply, a service is a
file that is downloaded from cloudfiles storage to every server running in the tier.

Examples of services include MySQL, Postgres, Wordpress, Drupal, Tomcat, etc.

.. figure:: ./images/deployment4.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Services Added to Tiers
   :align: center

   Services Added to Tiers

Add Data Source (optional)
--------------------------
In some cases, it may be appropriate to connect a datasource to a service. In our example
deployment, the lower tier is a database tier and the service connected to it is a
database dump file for MySQL.

By connecting a datasource to a service, enStratus knows to first configure the service,
then pass in the datasource to the service. Proper ordering of operations like that is
called *orchestration*.

.. figure:: ./images/deployment4a.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Data Source Added to Service
   :align: center

   Data Source Added to Service

Establish Dependencies
----------------------
A dependency is a logical connection between services that tells enStratus about the
relationship two services have. Here, we've established a dependency relationship between
the top (application) tier and the database service's datasource. 

A special type of dependency is established for the application service to the load
balancer as well.

.. figure:: ./images/deployment5.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Establish Dependencies
   :align: center

   Establish Dependencies

Establishing dependencies tells enStratus how to orchestrate the deployment of the
services. Given the dependency relationships described here, the following events will
happen:

#. Service installed on the Database Tier
#. Datasource installed on the Database Service
#. Service installed on the Application Tier.
#. enStratus passes information to the database server so it can grant access to the application servers.
#. enStratus passes information to every server in the application tier about how to find the datasource.
#. enStratus passes information to the load balancer about each application node.

At this point, the deployment is nearly configured. We have yet to tell enStratus about
the servers that will house the services.

Launch Configuration
--------------------
A launch configuration is a definition that governs the resources provisioned to support a
virtual machine. 

An enStratus launch configuration includes attaching, raiding, and encrypting volumes,
configuration management runs such as Chef, as well as the firewall into which the server
is started.

A launch configuration is typically tied to a region within a cloud.

Now the deployment is complete, but to take the deployment concept to it's logical
conclusion, let's demonstrate adding another region to this deployment.

Adding a Second Region
----------------------
enStratus will prompt the user to add a launch configuration for the newly added region.

No other conifguration changes need to be made since enStratus decouples the service
concept from the launch configuration. 

.. figure:: ./images/deployment6.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Add New Region
   :align: center

   Add New Region

Adding Configuration Management
-------------------------------
An optional configuration management execution call configured for each launch
configuration if Chef/Puppet is used to configure servers.

.. figure:: ./images/deployment7.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Add Configuration Management to Launch Configuration
   :align: center

   Add Configuration Management to Launch Configuration
