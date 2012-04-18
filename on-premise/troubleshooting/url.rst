Changing Install URL
--------------------

To change the root url of your enStratus cloud endpoint, go to the host where the console
databases are installed.

To view the settings for your current endpoint, issue the following commands:

.. code-block:: mysql

  mysql> select application id, main address from application;

  +------------------+-------------------+
  | application_id   | main_address      |
  +------------------+-------------------+
  |                1 | iaas.endpoint.com |
  | 1100000000000001 | cms               |
  +------------------+-------------------+

.. code-block:: mysql

  mysql> select address id, address from web address;

  +------------+-------------------------+
  | address_id | address                 |
  +------------+-------------------------+
  |          4 | cms.cloud.enstratus.com |
  |          1 | iaas.endpoint.com       |
  |          3 | dev.cloud.enstratus.com |
  +------------+-------------------------+

Unless you know what you are doing, leave the cookie domain for your endpoint as NULL.

As an example, we will update the domain to be cloud.supercorp.com. Issue the following
commands:

.. code-block:: mysql

  mysql> update web address set address='cloud.supercorp.com' where address id=1;

  mysql> select application id, main address from application;

  +------------------+---------------------+
  | application_id   | main_address        |
  +------------------+---------------------+
  |                1 | cloud.supercorp.com |
  | 1100000000000001 | cms                 |
  +------------------+---------------------+


.. code-block:: mysql

  mysql> select address id, address, cookie domain from web address;

  +------------+-----------------------------+----------------+
  | address_id | address                     | cookie_domain  |
  +------------+-----------------------------+----------------+
  |          4 | cms.cloud.enstratus.com     | NULL           |
  |          1 | cloud.supercorp.com         | NULL           |
  |          3 | dev.cloud.enstratus.com     | NULL           |
  +------------+-----------------------------+----------------+

Update enstratus-console.cfg
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Finally, the last thing to change is a file on the console server:

/services/console/tomcat/webapps/ROOT/WEB-INF/classes/enstratus-console.cfg

.. code-block:: bash

  refererList=https://iaas.endpoint.com,http://iaas.endpoint.com

**change to:**

.. code-block:: bash

  refererList=https://cloud.supercorp.com,http://cloud.supercorp.com

Finally, restart the console service.
