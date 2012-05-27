listDevices
~~~~~~~~~~~

Synopsis
++++++++

.. listDevices - List all devices currently mounted for the machine
listDevices - 現在マシンにマウントされているすべてのデバイスをリストアップします

Description
+++++++++++
.. Print a list of mounted partitions, file system, total and used capacity.
マウントされているパーティションのリスト、ファイルシステム、合計使用容量をプリントします。

.. Examples
例
++++++++

.. code-block:: sh

	$ listDevices
	/dev/sda1 ext3 / 15481840 4471396
	/dev/sdb ext3 /mnt 433455904 22485176
	/dev/sdh xfs /mnt/services 34578536 13631816



Invocation
++++++++++

.. It is called by the enstratus provisioning server to display information about the server volumes
これはenstratusプロビジョニングサーバによってサーバのボリュームに関する情報を表示するために呼び出されます。

Dependencies
++++++++++++

* None


Permissions
+++++++++++

.. It is launched by the enstratus user.
これはenstratusユーザーによって起動されます。


Overrides
+++++++++

Override: No

Replace: No
