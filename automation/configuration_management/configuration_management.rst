Configuration Management
========================

This section provides information on using configuration management systems within the
enStratus console.

The enStratus console allows you to manage resources using two kinds of configuration
management systems, Chef and Object Store.

Chef
----
Chef is a configuration management tool created by Opscode. enStratus support both the
hosted and private versions of Chef.

Object Store is a simple script based Configuration Management System that allows you to
upload custom scripts into a cloud storage account, groups scripts into personalities, and
automatically download and run the scripts when a new server is launched in your cloud
account.
Services

To implement configuration management, you must first configure a service under
Configuration Management > Services. If you choose Chef, you must supply an endpoint for
the service. If you choose Object Store, you must choose a region and then a directory in
which to store your scripts.

Accounts
~~~~~~~~

Once your service has been configured, you will need to create an account associated with
that service under Configuration Management > Accounts. When you set up an account for a
Chef service you associate a set of credentials with that account. Credentials are not
necessary for Object Store services.

Multiple accounts may be attached to the same Chef service with different sets of
credentials, but an Object Store service can be associated with only one configuration
management account at a time.
