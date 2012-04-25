#Automation
自動化
==========

#Introduction
はじめに
~~~~~~~~~~~~
enStratus automation encompasses many facets of infrastructure mangement and orchstration.

#. Automated backups. enStratus will perform backup/maintenance of the application and
   hardware infrastructure according to the specification of the deployment. Backups
   include both snapshots and service-level backups.
#. Scalability. enStratus will scale the servers to closely match infrastructure with
   demand.
#. Resiliency. Cloud servers by their nature are ephemeral, configuring a deployment will
   allow applications to survive the unexpected termination of a node.


Pre-requisites
~~~~~~~~~~~~~~

#. The most important pre-requisite for automation is the installation of the enStratus
   agent. The enStratus agent is the secure access point to each running instance for the
   enStratus cloud management software.

.. note:: This pre-requisite is one of the most frequently asked questions about
  automation. Before a machine image can be used in a deployment launch configuration, 
  the enStratus agent must be installed.

  For more information on how to install the agent, please see the agent documentation.
