Installation
------------

.. hint:: The easiest way to determine what version of the enStratus agent is installed on
  an instance is to use the actions menu associated with the instance. Choose actions > info
  and select the tab labeled "Guest".

Debian/Ubuntu
^^^^^^^^^^^^^

.. code-block:: bash

  $ apt-get install gcc sun-java6-jdk sysstat sudo secure-delete 
  $ sudo dpkg -i enstratus-latest.deb

Chef
^^^^

Using Chef to install and configure a VM for using the enStratus agent is the most
efficient and *idempotent* way of installing the enStratus agent.



Windows
^^^^^^^

