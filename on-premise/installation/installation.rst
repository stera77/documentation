.. _installation:

************
Installation
************

Downloads
=========

You need to have a license agreement to download the enStratus cloud governance software.

Before you begin
================

.. note:: When installing MySQL, please set a root password, it will be required during the installation of services that depend on MySQL.

During the installation enStratus will auto-generate mysql users and passwords for the database services it installs. enStratus generates good passwords.

  Example: K0B6KheBDtrANJOEp1LuWpCmjF

If generating your own passwords is something you would like to do. Please do so after completing the installation by referencing the appropriate configuration files and at your own risk.  The details of installing this software is dependent on your distribution. Please have this software installed before attempting an installation of the enStratus cloud management software.

Key Generation
==============

The purpose of this step is to generate encryption keys and create some bootstrap MySQL information for the Dispatcher and Console services.

Required Knowledge
##################

#. enStratus License Key
#. Desired url for the console service. For example, cloud.mycorporation.com 
#. IP address of the server that will run the console server.

Move the keygen bundle to the server that will contain the Key Management service and extract it.
Once extracted, there will be a keygen/ directory containing the following items:

#. classes
#. enstratus-utilities.jar 
#. files
#. keygen.sh
#. setup

Enter the keygen/ directory and, as root, execute the keygen.sh script. You will be promted for the three pieces of information listed above. The outcome of this script will be the creation of a file called install.credentials located in the setup/ directory.

This file is appended to with headers delimiting each section of the install, examples for each section show inline below

For the database-driven services of Key Manager, Dispatcher, and Console, the respective credentials section of this file are critical. If the installer crashes or is interrupted after the database installs have run and the credentials have been appended and you want to start over with the installation of that service, you must first delete the section in the install.credentials file and the databases that were created.  The requirement to do this will cease as the installer is improved.

Key Manager
===========
Required Knowledge
##################
#. MySQL Root Password
#. Java Home

Relevant files 
##############
kmInstaller.tar.gz, when extracted, will generate a km/ directory containing:

#. files
#. installDB.sh 
#. installKM.sh

Next, move the setup/ directory from the keygen directory, so that the contents of the km/ directory are, after this step:

#. files/
#. installDB.sh 
#. installKM.sh
#. setup/

Upon completion of this step, you will have installed the enStratus key management software component and the credentials database.  The setup/install.credentials file will be appended with the username and password used by the KM service to connect to its database along with a list of the configuration files used to configure the KM service.

Key Manager Configuration Files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. code-block:: none

  [ KM Configuration Files ]

  /services/km/tomcat/webapps/ROOT/META-INF/context.xml
  /services/km/tomcat/conf/server.xml

Dispatcher
==========

Required Knowledge
##################
#. IP address/hostname of Key Managment server
#. Credentials and location information for Rabbit MQ
#. IP addresses of dispatcher, monitor, and worker servers

Relevant files 
##############
dispatcherInstaller.tar.gz and the setup directory used during the installation of the enStratus Key Management software.
Extract the dispatcherInstaller.tar.gz file. There will be a dispatcher/ directory containing the following items:

Next, move the setup/ directory from the km directory, so that the contents of the dispatcher/ directory are, after this step:

#. files/
#. installDB.sh
#. installDispatcher.sh
#. setup/

Move the setup directory that was used during the installation of the key management
service into the dispatcher directory and, as root, execute the installDispatcher.sh
script. Follow the prompts to complete the installation of the dispatcher service.  Upon
completion of this step, you will have installed and configured the enStratus dispatcher
service and the provisioning and analytics databases.  

The setup/install.credentials file will be appended with the username and password used by
the dispatcher service to connect to its database along with a list of the configuration
files used to configure the dispatcher service.

Dispatcher Configuration Files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. code-block:: none

  [ Dispatcher Configuration Files ]

  /services/dispatcher/bin/tomcat
  /services/dispatcher/bin/enstratus
  /services/dispatcher/bin/pinger
  /services/dispatcher/tomcat/webapps/ROOT/META-INF/context.xml
  /services/dispatcher/tomcat/webapps/ROOT/WEB-INF/classes/mq.cfg
  /services/dispatcher/tomcat/webapps/ROOT/WEB-INF/classes/enstratus-km-client.cfg
  /services/dispatcher/tomcat/webapps/ROOT/WEB-INF/classes/enstratus-provisioning.cfg
  /services/dispatcher/tomcat/webapps/ROOT/WEB-INF/classes/dasein-persistence.properties
  /services/dispatcher/tomcat/conf/server.xml

Monitor/Worker
==============

Required Knowledge
##################
#. IP address/hostname of dispatcher and worker servers

Relevant files 
##############
monitorWorkerInstaller.tar.gz and the setup directory used during the installation of the
enStratus Dispatcher software.

Extract the monitorWorkerInstaller.tar.gz file. There will be a worker/ directory
containing the following items:

#. files
#. installMonitor.sh 
#. installWorker.sh

Next, move the setup/ directory from the dispatcher directory, so that the contents of the
monitorWorker/ directory are, after this step:

#. files/
#. installMonitor.sh 
#. installWorker.sh
#. setup/

Move the setup directory that was used during the installation of the dispatcher service
and, as root, execute the installMonitor.sh and then the installWorker.sh script.

Follow the prompts to complete the installation of the services.  

Upon completion of this step, you will have installed and configured the enStratus monitor
and worker services.  The setup/install.credentials file will be appended with the list of
the configuration files used to configure the worker service.

Monitor/Worker Configuration Files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. code-block:: none

  [ Monitor Configuration Files ]

  /services/monitor/bin/assign
  /services/monitor/bin/controller
  /services/monitor/bin/monitor
  /services/monitor/bin/pinger
  /services/monitor/classes/enstratus-km-client.cfg
  /services/monitor/classes/enstratus-provisioning.cfg
  /services/monitor/classes/mq.cfg
  /services/monitor/etc/cloud.properties
  /services/monitor/etc/monitors.cfg

  [ Workers Configuration Files ]

  /services/worker/classes/dasein-persistence.properties
  /services/worker/classes/enstratus-km-client.cfg
  /services/worker/classes/enstratus-provisioning.cfg
  /services/worker/classes/worker.properties
  /services/worker/classes/mq.cfg
  /services/worker/bin/pinger
  /services/worker/bin/worker
  /services/worker/bin/publisher
  /services/worker/bin/subscriber

Console
=======
Required Knowledge
##################
#. None :)

Relevant files 
##############
consoleInstaller.tar.gz and the setup directory used during the
installation of the enStratus Monitor and Worker services.

Extract the consoleInstaller.tar.gz file. There will be a console/ directory containing
the following items:

#. files
#. installDB.sh
#. installConsole.sh

Next, move the setup/ directory from the monitorWorker/ directory, so that the contents of the
console/ directory are, after this step:

Follow the prompts to complete the installation of the console service.

#. files/
#. installDB.sh
#. installConsole.sh
#. setup/

Upon completion of this step, you will have installed and configured the enStratus console
service along with the console and enstratus console datbases.

The setup/install.credentials file will be appended with the username and password used by
the console service to connect to its database along with a list of the configuration
files used to configure the console service.

Console Configuration Files
~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. code-block:: none

  [ Console Configuration Files ]

  /services/console/bin/tomcat
  /services/console/bin/enstratus
  /services/console/tomcat/webapps/ROOT/META-INF/context.xml
  /services/console/tomcat/webapps/ROOT/WEB-INF/classes/enstratus-webservices.cfg
  /services/console/tomcat/webapps/ROOT/WEB-INF/classes/dasein-persistence.properties
  /services/console/tomcat/webapps/ROOT/WEB-INF/classes/enstratus-console.cfg
  /services/console/tomcat/webapps/ROOT/WEB-INF/classes/custom/networks.cfg

Example Files
=============

install.credentials
~~~~~~~~~~~~~~~~~~~
.. code-block:: none

  [ Credentials Setup ]

  dispatcherEncryptionKey=Zm7DLoK01^23t0R8Xc_NngLuiRZn%WQ7
  accessKey=zslJyB*O*x)mj[N0]w&1jpSEMoqjK]oba$oc
  encryptedManagementKey=73f30b959a961e9d399de716448dc93275d9ff
  firstEncryptedAccessKey=830e1b03a8e6e55edf53a75583c115dabc7b
  consoleEncryptionKey=J9r!flGcAbdmw$LbQgLN[_svDiz$GWnpjT2l]j
  secondEncryptedAccessKey=a23e18ef05d4fbf40b4f45886d1ce44cea8

  [ License Key ]
  LICENSE_KEY=asdf

  [Other Stuff]
  CONSOLE_URL=asdf
  CONSOLE_IP=asdf
  JAVA_HOME=/usr/lib/jvm/java-6-sun

  MYSQL_ROOT=trustno1


  [ KM Database Credentials ]

  kmDBUser=credentials
  kmDBPass=YVByJ6Qw4LyTZbj823VYNSAa52

  [ KM Configuration Files ]

  /services/km/tomcat/webapps/ROOT/META-INF/context.xml
  /services/km/tomcat/conf/server.xml

  [ KM Logging File ]

  /services/km/tomcat/logs/catalina.out

  [ provisioning Database Credentials ]

  provisioningDBUser=provisioning
  provisioningDBPass=Jy4eSWaS8iRU3IXvm8MmC7VD4M

  [ analytics Database Credentials ]

  analyticsDBUser=provisioning
  analyticsDBPass=Jy4eSWaS8iRU3IXvm8MmC7VD4M

  [ MQ ]

  mqUser=qsmq
  mqPassword=enstratus
  mqHost=localhost
  mqPort=5672


  KM_HOST=km

  SOURCE_CIDR=123.123.123.123

  [ Dispatcher Configuration Files ]

  /services/dispatcher/bin/tomcat
  /services/dispatcher/bin/enstratus
  /services/dispatcher/bin/pinger
  /services/dispatcher/tomcat/webapps/ROOT/META-INF/context.xml
  /services/dispatcher/tomcat/webapps/ROOT/WEB-INF/classes/mq.cfg
  /services/dispatcher/tomcat/webapps/ROOT/WEB-INF/classes/enstratus-km-client.cfg
  /services/dispatcher/tomcat/webapps/ROOT/WEB-INF/classes/enstratus-provisioning.cfg
  /services/dispatcher/tomcat/webapps/ROOT/WEB-INF/classes/dasein-persistence.properties
  /services/dispatcher/tomcat/conf/server.xml

  [ Dispatcher Logging File ]

  /services/dispatcher/tomcat/logs/catalina.out

  PROV_HOST=dispatcher


  [ Monitor Configuration Files ]

  /services/monitor/bin/assign
  /services/monitor/bin/controller
  /services/monitor/bin/monitor
  /services/monitor/bin/pinger
  /services/monitor/classes/enstratus-km-client.cfg
  /services/monitor/classes/enstratus-provisioning.cfg
  /services/monitor/classes/mq.cfg
  /services/monitor/etc/cloud.properties
  /services/monitor/etc/monitors.cfg

  [ Monitor Logging Files ]

  /services/monitor/log/\*.log

  [ Workers Configuration Files ]

  /services/worker/classes/dasein-persistence.properties
  /services/worker/classes/enstratus-km-client.cfg
  /services/worker/classes/enstratus-provisioning.cfg
  /services/worker/classes/worker.properties
  /services/worker/classes/mq.cfg
  /services/worker/bin/pinger
  /services/worker/bin/worker
  /services/worker/bin/publisher
  /services/worker/bin/subscriber

  [ Worker Logging File ]

  /services/worker/log/Subscriber.log

  [ Console Database Credentials ]

  consoleDBUser=console
  consoleDBPass=FHRMgSEUtdHNznT72ZGDZBRGjb
  enstratusConsoleDBUser=ens_console
  enstratusConsoleDBPass=6VsKF3Nathqayy0Uredd0WnKG0

  [ Console Configuration Files ]

  /services/console/bin/tomcat
  /services/console/bin/enstratus
  /services/console/tomcat/webapps/ROOT/META-INF/context.xml
  /services/console/tomcat/webapps/ROOT/WEB-INF/classes/enstratus-webservices.cfg
  /services/console/tomcat/webapps/ROOT/WEB-INF/classes/dasein-persistence.properties
  /services/console/tomcat/webapps/ROOT/WEB-INF/classes/enstratus-console.cfg
  /services/console/tomcat/webapps/ROOT/WEB-INF/classes/custom/networks.cfg

  [ Console Logging File ]

  /services/console/tomcat/logs/catalina.out

