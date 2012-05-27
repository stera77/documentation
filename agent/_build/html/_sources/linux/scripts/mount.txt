mount
~~~~~

Name
++++

.. mount - It mounts a storage device at a directory. 
mount - ストレージデバイスをディレクトリにマウントします。 

Description
+++++++++++

.. It mounts a storage device at a directory. Additional the mount point will be added to the /etc/fstab file so it is mounted automatically on server restart.
ストレージデバイスをディレクトリにマウントします。サーバの再起動時に自動的にマウントされるように追加のマウントポイントが /etc/fstab ファイルに追加されます。

Usage
+++++

mount DEVICE_ID FILE_SYSTEM MOUNT_POINT


.. DEVICE_ID
.. 	Last part of the Linux device name (ie sdh for /dev/sdh or data for /dev/mapper/data ) . Generally this parameter is obtained automatically from the cloud provider.
DEVICE_ID
	Linuxのデバイス名（つまり /dev/sdh の sdh または /dev/mapper/data 用の data ）の最後の部分。一般的に、このパラメータは、クラウドプロバイダーから自動的に取得されます。

.. FILE_SYSTEM
.. 	File system of the volume to be mounted. It is required to add the mount point to the /etc/fstab file.
FILE_SYSTEM
	マウントされるボリュームのファイルシステムです。これは /etc/fstab ファイルにマウントポイントを追加する必要があります。

.. MOUNT_POINT
.. 	Empty directory where the volume will be mounted
MOUNT_POINT
	ボリュームがマウントされる空のディレクトリ

Invocation
++++++++++

.. This script is called when:

.. * If a volume is created when manually launching a server from the Machine Images page. In this case the mount point and file system can be set by the user.
   * A Volume is attached to a server in the Volume list page, and the option Automount is selected
   * When a server is launched within a deployment and its Launch Configuration has been set to automatically create a volume. In this case volume is mounted in /mnt/services and given a xfs filesystem.
このスクリプトは、次の場合に呼び出されます。:

* 手動でマシンのイメージページからサーバーを起動したときにボリュームが作成されます。このケースではマウントポイントとファイルシステムは、ユーザが設定することができます。
* ボリュームは、ボリュームリストのページのサーバーに接続され、オプションの自動マウントが選択されています。
* サーバは、配備内で起動され、その起動設定が自動的にボリュームを作成するように設定されている場合。この場合、ボリュームは /mnt/services にマウントされ、XFSファイルシステムが与えられます。

Dependencies
++++++++++++

* sudo
* Kernel modules required for mounting the filesystem

Permissions
+++++++++++

.. It is launched by the enstratus user. It needs sudo authority for mounting a filesystem and editing the /etc/fstab file. User enstratus will own the mount point and will be writeable by the user and group enstratus.
これはenstratusユーザーによって起動されます。ファイルシステムをマウントし、 /etc/fstab ファイルを編集するためには sudo 権限が必要です。enstratusのユーザーは、マウントポイントを所有し、enstratusのユーザーとグループによって書き込み可能になります。

Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
