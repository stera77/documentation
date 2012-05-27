umount
~~~~~~

Name
++++

.. umount - It umounts any filesystem mounted at a given folder 
umount - 特定のフォルダにマウントされているすべてのファイルシステムをアンマウントします


Synopsis
+++++++

umount MOUNT_POINT

Description
+++++++++++

.. It umount any filesystem mounted at MOUNT_POINT . Aditionally it removes any related entry in /etc/fstab.
これは、 MOUNT_POINT でマウントされているすべてのファイルシステムをアンマウントします。そのうえそれは、 /etc/fstab 内の任意の関連するエントリを削除します。

Options
+++++++

.. MOUNT_POINT
.. 	Directory to be unmounted
MOUNT_POINT
	アンマウントされる予定のディレクトリ


Invocation
++++++++++

.. This script is called when:
このスクリプトは、次の場合に呼び出されます。

.. * A Volume is dettached from server in the Volume list page.
* ボリュームが、ボリュームリストのページ内のサーバーからデタッチされる場合。

Dependencies
++++++++++++

* sudo


Permissions
+++++++++++

.. It is launched by the enstratus user. It needs sudo authority for umounting a device. 
これはenstratusユーザーによって起動されます。デバイスをアンマウントするには sudo の権限を必要とします。

Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
