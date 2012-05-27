grantDatabaseAccess
~~~~~~~~~~~~~~~~~~~


Name
++++
.. grantDatabaseAccess - Triggers a service-specific script for granting database access to a client.
grantDatabaseAccess - クライアントへのデータベースアクセス権を付与するためのサービス固有のスクリプトをトリガします。

Synopsis
++++++++

grantDatabaseAccess SERVICE_ID CONFIG_FILE 

Description
+++++++++++

.. It invokes the script /mnt/services/$SERVICE_ID/bin/enstratus-dbgrant , if existent, to allow access to a database from another server
これは別のサーバーからデータベースへのアクセスを許可するために、もし存在すれば、スクリプト /mnt/services/$SERVICE_ID/bin/enstratus-dbgrant を呼び出します。

Options
+++++++

.. SERVICE_ID
.. 	ID of the service. It's provided by enstratus. Service images are stored in /mnt/services/$SERVICE_ID
SERVICE_ID
	サービスIDです。それはenstratusにより提供されています。サービスイメージは /mnt/services/$SERVICE_ID に格納されています。


.. CONFIG_FILE
.. 	Configuration file provided by enstratus. It contains information required to grant access to a data source, like the remote server IP, database name and credentials .
CONFIG_FILE
	構成ファイルはenstratusによって提供されます。これには、リモートサーバーのIPアドレス、データベース名と資格情報のように、データソースへのアクセス権を付与するために必要な情報が含まれています。

.. Examples
例
++++++++

grantDatabaseAccess a123 /enstratus/ws/tomcat/temp/database6625343243682788319.cfg


Invocation
++++++++++

.. This script is called automatically by enstratus during a deployment for any new server in a service depending of a Data Source
このスクリプトは、サービス内のすべての新規サーバーの配備時にデータソースに応じて、enstratusによって自動的に呼び出されます


Dependencies
++++++++++++

* None

Permission
++++++++++

.. It is launched by the enstratus user.
これはenstratusユーザーによって起動されます。

Overrides
+++++++++

Override: No

Replace: No
