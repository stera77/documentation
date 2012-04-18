Key Value Databases
-------------------

enStratus Key/Value Databases (KV Databases or KVDB) are a simple solution for storing
your data for high availability and scalability. With a KV database you get only what you
need. You can simply query your data and return the results without having to manage
different schemas for your stored data sets. You do not need to worry when storing new
data because it is automatically indexed for you.

Overview
~~~~~~~~
enStratus currently supports the creation and termination of Amazon SimpleDB domains. See
Amazon SimpleDB for more information and current pricing.

KV databases are large collections of data organized into separate domains. The data is
stored in hash tables that contain key to value pairs. The key to value pairs are
attributes that can be searched in lexicographical queries.

Creating a Key/Value Database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To launch a new KV database in the enStratus console click on Platform > Key/Value
Databases. Then click  +add key/value database.

Screenshot 1

In the Create Key/Value Database form you will see the different fields for creating the
KVDB.

Screenshot 2

The **Name** field is for a custom name to associate with your database.

The **Description** field can be a custom description for your database.

The **Label** field helps you organize your KVDB instances by providing a unique color label.

**Billing Code** and **User Group** are the billing code and user group attributes that enStratus
will use to track billing charges and access rights tied to the user management and
billing code offerings of enStratus.

Upon save the KV database is launched. It can take up to 15 minutes to appear in the
enStratus console.

Terminating Key/Value Databases
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To terminate a KVDB click actions > terminate in the Key/Value Databases table.

Screenshot 3.
