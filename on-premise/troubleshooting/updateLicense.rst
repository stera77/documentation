Update License Key
------------------

Updating your enStratus license key can be accomplished using the following steps.

Required Information
~~~~~~~~~~~~~~~~~~~~

#. Access to the provisioning database.
#. License key

Updating the Key
~~~~~~~~~~~~~~~~

.. code-block:: mysql

  update backend_configuration set license_key='abcd1234';

Finishing Up
~~~~~~~~~~~~

Once the key is updated, you will need to restart the dependent services.

* Dispatcher
* Workers/Monitors
