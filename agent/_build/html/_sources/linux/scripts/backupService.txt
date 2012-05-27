backupService
~~~~~~~~~~~~~

Name
+++++
.. backupService ~ Backs up the target service.
backupService ~ ターゲットのサービスをバックアップします。

Synopsis
++++++++

backupService SERVICE_ID FILE_PATH

Description
+++++++++++

.. enStratus invokes the script /mnt/services/$SERVICE_ID/bin/enstratus~backupService, if it
   exists, to backup a service. enstratus-backupService is usually an ad-hoc script meant to backup an specific kind of service.
もしそれがあれば、サービスをバックアップするために、enStratusは、
スクリプト /mnt/services/$SERVICE_ID/bin/enstratus~backupService を呼び出します。
通常 enstratus-backupService は、特定のサービスをバックアップすることを意味する一時的なスクリプトです。

Options
+++++++

.. SERVICE_ID
.. 	ID of the service to be backed up. It's provided by enstratus. Service images are stored in /mnt/s   ervices/$SERVICE_ID
SERVICE_ID
	サービスIDは、バックアップすることができます。それはenstratusにより提供されています。サービスイメージは /mnt/services/$SERVICE_ID に格納されています

.. FILE_PATH
.. 	Temporary file name to be used to store the backup. After a successful backup enstratus will uploa   d the file to the configured cloud storage.
FILE_PATH
	バックアップを格納するために使用する一時ファイル名です。正常なバックアップ後にenstratusが構成されたクラウドストレージにファイルをアップロードします。

.. Examples
例
++++++++

backupService a123 /mnt/tmp/123-testservice-YYYYMMDD-ID.zip


Invocation
++++++++++

.. This script is called automatically by enstratus if the Service has been set for periodic backups, according to the configured frequency.
サービスが定期的なバックアップをするように設定されている場合、このスクリプトは、設定周期に応じて、enstratusによって自動的に呼び出されます。


Dependencies
++++++++++++

* None

Permission
++++++++++

.. It is launched by the enstratus user.
これはenstratusユーザーによって起動されます。

Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
