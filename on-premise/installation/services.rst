.. _services:

Starting Services
=================
One the installation is completed, it's time to start the services. The purpose of this
section is to demonstrate how to start the enStratus management services and determine if
the the services are running. This section will also cover how to stop the enStratus
management services.

Init Scripts
------------
Each service should have installed an associated init script, located in /etc/init.d/

enStratus Init Scripts
~~~~~~~~~~~~~~~~~~~~~~
.. tabularcolumns:: |l|l|l|
+----------------+----------------------------------+-------------+
| Component      | Init Script                      | Usage       |
+================+==================================+=============+
| Key Management | /etc/init.d/enstratus-km         | start, stop |
+----------------+----------------------------------+-------------+
| Dispatcher     | /etc/init.d/enstratus-dispatcher | start, stop |
+----------------+----------------------------------+-------------+
| Monitor        | /etc/init.d/enstratus-monitor    | start, stop |
+----------------+----------------------------------+-------------+
| Worker         | /etc/init.d/enstratus-worker     | start, stop |
+----------------+----------------------------------+-------------+
| Console        | /etc/init.d/enstratus-console    | start, stop |
+----------------+----------------------------------+-------------+

Key Manager
-----------
The enStratus Key/Credentials Management service is a tomcat service installed to
/services/km. 

Key/Credentials Mangager Overview
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The enStratus Key/Credentials management system is responsible for the secure handling of cloud credentials
and any other sensitive information provided via the enStratus console or API. Information is stored in an
encrypted, de-identified database and is not accessible to users.

Starting Key Manager
~~~~~~~~~~~~~~~~~~~~
To start the Key Management service:

.. code-block:: bash

	/etc/init.d/enstratus-km start

Key Manager Start Process
^^^^^^^^^^^^^^^^^^^^^^^^^
The init script passes the start argument to /services/km/bin/tomcat, which starts the km service.

.. code-block:: bash

	Starting Key Manager.
	Using CATALINA_BASE:   /services/km/tomcat
	Using CATALINA_HOME:   /services/km/tomcat
	Using CATALINA_TMPDIR: /services/km/tomcat/temp
	Using JRE_HOME:       /usr/lib/jvm/java-6-sun

The tomcat service will start, and you should see a java service running on port 2013.

.. code-block:: bash

	netstat -tnlup | grep 2013
	tcp6       0      0 :::2013                 :::*                    LISTEN 7159/java  

Stopping Key Manager
~~~~~~~~~~~~~~~~~~~~
To stop the Key Management service:

.. code-block:: bash

	/etc/init.d/enstratus-km stop

	Stopping Key Manager.
	Using CATALINA_BASE:   /services/km/tomcat
	Using CATALINA_HOME:   /services/km/tomcat
	Using CATALINA_TMPDIR: /services/km/tomcat/temp
	Using JRE_HOME:       /usr/lib/jvm/java-6-sun

Key Manager Stop Process
^^^^^^^^^^^^^^^^^^^^^^^^
The init script passes the stop argument to /services/km/bin/tomcat, which stops the km service.

Dispatcher
----------
The enStratus Dispatcher service is a tomcat service installed to /services/dispatcher.

Dispatcher Overview
~~~~~~~~~~~~~~~~~~~
The dispatcher service is the heart of the enStratus provisioning operations. It is responsible for executing
user-initiated actions from the enStratus console.

Starting Dispatcher
~~~~~~~~~~~~~~~~~~~
To start the Dispatcher service:

.. code-block:: bash

	/etc/init.d/enstratus-dispatcher start

Dispatcher Start Process
^^^^^^^^^^^^^^^^^^^^^^^^
The dispatcher init script performs two actions:
#. Executes /services/dispatcher/bin/pinger. This starts the pinger service.
#. Passes the start argument to /services/dispatcher/bin/tomcat, which starts the dispatcher service. 

.. code-block:: bash

	Starting pinger.
	Starting Dispatcher.
	Using CATALINA_BASE:   /services/dispatcher/tomcat
	Using CATALINA_HOME:   /services/dispatcher/tomcat
	Using CATALINA_TMPDIR: /services/dispatcher/tomcat/temp
	Using JRE_HOME:       /usr/lib/jvm/java-6-sun

The pinger is an auxiliary service which is responsible for performing a type of heartbeat operation for
virtual machines provisionined in the cloud.

The dispatcher service will start, and a java service will run on port 3302.

.. code-block:: bash

	netstat -tnlup | grep 3302
	tcp6       0      0 :::3302                 :::*                    LISTEN 7199/java  

Stopping Dispatcher
~~~~~~~~~~~~~~~~~~~
To stop the Dispatcher service:

.. code-block:: bash

	/etc/init.d/enstratus-dispatcher stop

	root@ubuntu:/home/greg# stopDispatcher 
	Stopping Dispatcher.
	Using CATALINA_BASE:   /services/dispatcher/tomcat
	Using CATALINA_HOME:   /services/dispatcher/tomcat
	Using CATALINA_TMPDIR: /services/dispatcher/tomcat/temp
	Using JRE_HOME:       /usr/lib/jvm/java-6-sun

Dispatcher Stop Process
^^^^^^^^^^^^^^^^^^^^^^^
The dispatcher init script passes the stop argument to /services/dispatcher/bin/tomcat, which stops the dispatcher
service.

.. note:: The stop argument does not stop the pinger service. This is expected behavior.

Monitor
-------
The enStratus monitor service is a java service installed to /services/monitor.

Monitor Overview
~~~~~~~~~~~~~~~~
.. note:: The enStratus monitors service is in the process of being deprecated in favor of a more efficient workers process. 

The enStratus monitors service is responsible for maintaining an accurate representation of cloud state,
checking on the completion of jobs initated by the dispatcher service, orchestrating server launches and
service installations.

Starting Monitor
~~~~~~~~~~~~~~~~
To start the monitor services:

.. code-block:: bash

	/etc/init.d/enstratus-monitor start

Monitor Start Process
^^^^^^^^^^^^^^^^^^^^^
The monitor init script performs the following actions:

#. Executes /services/monitor/bin/assign. This starts the assignment service, which is responsible for controlling the monitor services.
#. The monitor start process cycles through a list of monitors designated in the file called /services/monitor/etc/monitors.cfg, executing a call to /services/monitor/bin/poll, with the start argument, as shown. Each monitor process has an associated log file located in /services/monitor/log.

.. code-block:: bash

	Starting assign
	Starting assignment...
	Started 0.
	Starting monitors.
	/services/monitor/bin/poll start Address 1
	/services/monitor/bin/poll start AutoScaling 1
	/services/monitor/bin/poll start Backup 1
	/services/monitor/bin/poll start Budget 1
	/services/monitor/bin/poll start Dc 1
	/services/monitor/bin/poll start Deployment 1
	/services/monitor/bin/poll start DeploymentAnalytics 1
	/services/monitor/bin/poll start Distribution 1
	/services/monitor/bin/poll start Dns 1
	/services/monitor/bin/poll start ExchangeRate 1
	/services/monitor/bin/poll start ForwardingRule 1
	/services/monitor/bin/poll start Image 1
	/services/monitor/bin/poll start Invoice 1
	/services/monitor/bin/poll start KeyValue 1
	/services/monitor/bin/poll start LoadBalancer 1
	/services/monitor/bin/poll start Maintenance 1
	/services/monitor/bin/poll start Notifications 1
	/services/monitor/bin/poll start Prepayment 1
	/services/monitor/bin/poll start Rdbms 1
	/services/monitor/bin/poll start ScalingEvent 1
	/services/monitor/bin/poll start ScalingEventProcess 1
	/services/monitor/bin/poll start Server 1
	/services/monitor/bin/poll start ServerAnalytics 1
	/services/monitor/bin/poll start Snapshot 1
	/services/monitor/bin/poll start Ssl 1
	/services/monitor/bin/poll start Subscription 1
	/services/monitor/bin/poll start TierAnalytics 1
	/services/monitor/bin/poll start Volume 1
	/services/monitor/bin/poll start VPNGateway 1

Stopping Monitor
~~~~~~~~~~~~~~~~
To stop the monitor services:

.. code-block:: bash

	/etc/init.d/enstratus-monitor stop

Monitor Stop Process
^^^^^^^^^^^^^^^^^^^^
The monitor init script performs the following actions:

#. Executes /services/dispatcher/bin/assign, passing the stop argument. This stops the assignment service.
#. The monitor start process cycles through a list of monitors designated in the file called /services/monitor/etc/monitors.cfg, executing a call to /services/monitor/bin/poll, with the stop argument, as shown. Each monitor process has an associated log file located in /services/monitor/log.

.. note:: The monitor stop process is slow and not terribly reliable. A less elegant, yet faster method for
	terminating the monitor processes is to issue the command:

		ps -ef | grep onit | awk '{print $2}' | while read line; do kill -9 $line; done

Worker
------
.. note:: The enStratus worker service is a java service installed to /services/worker. The enStratus monitor services
	are in the process of being migrated to the worker model. 

Worker Overview
~~~~~~~~~~~~~~~~
The enStratus worker service consists of two components, a publisher and a subscriber. At a very high level,
these components:

1. Publisher

  - The publisher is responsible for pushing actions onto a queue. 

2. Subscriber

  - The subscriber is responsible for taking actions off of the queue and acting accordingly.

Starting Worker
~~~~~~~~~~~~~~~
To start the worker service:

.. code-block:: bash

	/etc/init.d/enstratus-workers start

Worker Start Process
^^^^^^^^^^^^^^^^^^^^^
The worker init script performs the following actions:

#. Executes /services/worker/bin/publisher, passing it the argument: start. This starts the publisher process.
#. Executes /services/worker/bin/subscriber, passing it the argument: start. This starts the subscriber process.

Stopping Worker
~~~~~~~~~~~~~~~
To stop the worker service:

.. code-block:: bash

	/etc/init.d/enstratus-workers stop

Console
-------
The enStratus console is a tomcat service installed to /services/console.

Console Overview
~~~~~~~~~~~~~~~~
The enStratus console service is a tomcat service that provides the web front-end, or enStratus user console.

Starting Console
~~~~~~~~~~~~~~~~
To start the console service:

.. code-block:: bash

	/etc/init.d/enstratus-console start

Console Start Process
^^^^^^^^^^^^^^^^^^^^^
The console init script performs the following action:

#. Executes /services/console/bin/tomcat, passing it the argument: start. This starts the console process.

Stopping Console
~~~~~~~~~~~~~~~~
To stop the console service:

.. code-block:: bash

	/etc/init.d/enstratus-console stop

Console Stop Process
^^^^^^^^^^^^^^^^^^^^
The console init script performs the following action:

#. Executes /services/console/bin/tomcat, passing it the argument: stop. This stops the console process.

API
---

Starting API
~~~~~~~~~~~~

Stopping API
~~~~~~~~~~~~
