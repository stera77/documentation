backupDataSource
~~~~~~~~~~~~~~~~

Name
++++
.. backupDataSource ~ Dumps a data source to the specified file location
backupDataSource ~ データソースを指定したファイルの場所にダンプします

Synopsis
++++++++
Language: Bash
backupDataSource SERVICE_ID DATA_SOURCE CONFIG_FILE FILE_PATH

Description
+++++++++++

.. It invokes the script /mnt/services/$SERVICE_ID/bin/enstratus-backupDataSource , if existent, to backup a Data Source. enstratus~backupDataSource is usually an ad~hoc script meant to backup an specific kind of data source, for example using mysqldump for MySQL databases, pgdump for PostGRESQL, etc.
バックアップが存在しない場合、データソースをバックアップするために、 /mnt/services/$SERVICE_ID/bin/enstratus-backupDataSource スクリプトを呼び出します。 enstratus~backupDataSource は通常はデータソースの特定の種類のバックアップを作成するための非定形な、例えばMySQLデータベース用の mysqldump 、PostgreSQL用のpgdump等のスクリプトです。

Options
++++++++

.. SERVICE_ID
.. 	ID of the service to be backed up. It's provided by enstratus. Service images are stored in /mnt/services/$SERVICE_ID
SERVICE_ID
	サービスIDは、バックアップすることができます。これはenstratusにより提供されています。サービスイメージは /mnt/services/$SERVICE_ID に格納されています

.. DATA_SOURCE
.. 	Name of the datasource to be backed up.
DATA_SOURCE
	バックアップするデータソースの名前。 

.. CONFIG_FILE
.. 	Configuration file provided by enstratus. It contains information required to perform the backup, such as credentials.
CONFIG_FILE
	構成ファイルはenstratusによって提供されます。これには、資格情報などのバックアップを実行するために必要な情報が含まれています。

.. FILE_PATH
.. 	Temporary file name to be used to store the backup. After a successful backup enstratus will upload the file to the configured cloud storage.
FILE_PATH
	バックアップを格納するために使用する一時ファイル名です。正常なバックアップ後にenstratusが構成されたクラウドストレージにファイルをアップロードします。

.. Examples
例
++++++++

backupDataSource a123 testds /mnt/services/a123/cfg/enstratus.cfg /mnt/tmp/123~testds~YYYYMMDD~ID.zip


Invocation
++++++++++

.. This script is called automatically by enstratus if the Data Source has been set for periodic backups, according to the configured frequency.
データソースが、定期的なバックアップをするように設定されている場合、このスクリプトは、設定された周期に応じて、enstratusによって自動的に呼び出されます。


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
