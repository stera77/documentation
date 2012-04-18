Anatomy
-------
The anatomy of a service is very free-form. This allows for great flexibility in designing
or adapting an application for use in a multi-cloud environment.

An enStratus service should have the following structure:

bin
~~~
Inside the bin/ directory, minimally 3 files:

#. enstratus-start
#. enstratus-stop
#. enstratus-configure

The bin/ directory provides a known path for leveraging the enstratus orchestration and
automation sections. When a service is deployed enStratus will, using the enStratus agent,
trigger events to configure each service in the appropriate order.

cfg
~~~
The cfg directory is a directory where enStratus writes configuration files generated at
run time with information the application will need to operate in the cloud. This
directory is a good place for putting configuration file "templates".

.. note:: The astute chef user/reader will recognize the word template as a very useful
  construct from the Chef/Opscode world and that's precisely correct. As deployers of
  cloud applications, we use this cfg directory to stage files that will be written
  dynamically with ephemeral cloud information.

And...that's it. Questions? :)

The bin/ and the cfg/ directories are the two primary directories used by the enStratus
management system. Beyond that, additional directories can be added to suit the
application. For example, a third directory might be:

app
~~~
index.html

Where the application directory holds the application files, in this case a lonely
index.html.


MySQL Service
~~~~~~~~~~~~~
The MySQL service structure looks like this:

bin/

.. hlist::
   :columns: 3

   * addDataSource
   * enstratus-backupDataSource
   * enstratus-configureDataSource
   * enstratus-lock
   * mysql
   * mysqlStartReplication
   * configureDataSource
   * enstratus-check
   * enstratus-dbgrant
   * enstratus-start
   * mysqlDump
   * configureMySQL                
   * enstratus-configure
   * enstratus-installds
   * enstratus-stop                
   * mysqlGrant

cfg/

.. hlist::
   :columns: 1
  
   * master.cnf
   * replicant.cnf 

data/

.. hlist::
   :columns: 1
    
   * ``<empty>``

log/

.. hlist::
   :columns: 1
    
   * ``<empty>``
