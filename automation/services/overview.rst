Overview
--------

What's in, and what is, a service?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A service is a file stored in cloud file storage. Services can be tied to tiers and
connected to each other by a special relationship called a dependency. 

Using enStratus automation, services are downloaded to servers when servers reach a
running state. The enStratus agent downloads, extracts, and executes a service
configuration routine written by the application designer.

Readers familiar with configuration management services such as Chef should approach
services in a similar way to a recipe. Services are deployed onto virtual machines that
are configured accoring to their launch configuration.

Services: Logically
~~~~~~~~~~~~~~~~~~~

enStratus makes a logical connection between tiers and services. Services are tied to
tiers because tiers are able to span across cloud regions, for example a tier that spans
AWS region US-East and AWS region US-West.

Beyond spanning tiers across regions within a single cloud, tiers are capable of spanning
across several clouds as shown in the diagram below.

.. figure:: ./images/spanningClouds.png
   :height: 300px
   :width: 800 px
   :scale: 99 %
   :alt: Tier Spanning Clouds
   :align: center

   Tier Spanning Clouds

This implementation depicts a tier spanning between two public clouds, in this case Amazon
AWS and Rackspace. It is equally possible to span a tier into a private cloud as well.

Services: Physically
~~~~~~~~~~~~~~~~~~~~
Physically, services are stored in cloud storage and downloaded as part of the start of a
deployment. Once downloaded, services are installed onto servers that are running within
a tier.

