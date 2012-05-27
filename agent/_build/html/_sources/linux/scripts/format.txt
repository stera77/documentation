format
~~~~~~

Function
++++++++

.. It creates a filesystem in a given physical or logical storage volume. Additionally it adds an entry for that volume in /etc/fstab so the volume can be mounted easily. Actual volume mount is performed by the mount script.
これは、与えられた物理的または論理的なストレージボリュームにファイルシステムを作成します。さらに、ボリュームが簡単にマウントできるように、 /etc/fstab にそのボリュームのエントリを追加します。実際のボリュームのマウントは、マウントスクリプトによって実行されます。

Usage
+++++

format DEVICE_ID FILE_SYSTEM MOUNT_POINT ENCRYPTED


.. DEVICE_ID
.. 	Last part of the Linux device name (ie sdh for /dev/sdh or data for /dev/mapper/data ) . Generally this parameter is obtained automatically from the cloud provider.
DEVICE_ID
	Linuxのデバイス名（つまり /dev/sdh の sdh または /dev/mapper/data 用の data ）の最後の部分。一般に、このパラメータは、クラウドプロバイダーから自動的に取得されます。

.. FILE_SYSTEM
.. 	File system to be created. Most popular Linux filesystems are available (xfs,ext2,ext3,ext4) provided the server image includes support for them. By default enstratus will use xfs
FILE_SYSTEM
	作成されるファイルシステム。最も人気のあるLinuxファイルシステム（XFS、ext2、ext3、ext4は）が、それらのサポートを含むサーバーイメージで提供されて用意されています。デフォルトではenstratusは xfs を使用します。

.. MOUNT_POINT
.. 	Empty directory where the formatted volume will be mounted
MOUNT_POINT
	フォーマットされるボリュームがマウントされる空のディレクトリ
	
.. ENCRYPTED
.. 	Whether or not the volume has been decrypted by enstratus. That is required to find the correct device name and set suitable options in /etc/fstab
ENCRYPTED
	ボリュームがenstratusによって復号化されているかどうか。それには /etc/fstab に正しいデバイス名を見つけ、適切なオプションを設定する必要があります

Invocation
++++++++++

.. This script is called when:

.. * If a volume is created when manually launching a server from the Machine Images page. In this case the mount point and file system can be set by the user.
   * When a server is launched within a deployment and the launch configuration has been set to automatically create a volume. In this case volume is mounted in /mnt/services and given a xfs filesystem.
このスクリプトは、次の場合にに呼び出されます。:

* 手動でマシンイメージページからサーバーを起動したときにボリュームが作成されます。このケースではマウントポイントとファイルシステムは、ユーザが設定することができます。
* サーバが、配備内で起動され、起動設定が自動的にボリュームを作成するように設定されている場合。この場合、ボリュームは /mnt/services にマウントされ、XFSファイルシステムが与えられます。

Dependencies
++++++++++++

* sudo
.. * mkfs utility for the selected filesystem, that's is mkfs.xfs for XFS support, mkfs.ext3 for ext3
* mkfs 選択されたファイルシステム用のユーティリティで、それはXFSをサポートするための mkfs.xfs 、ext3ファイルシステムのための mkfs.ext3 です。
.. * Kernel modules required for mounting the filesystem
* Kernel  ファイルシステムをマウントするために必要なモジュール。

Permission
++++++++++

.. It is launched by the enstratus user. It needs sudo authority for creating a filesystem and editing the /etc/fstab file.
これはenstratusユーザーによって起動されます。ファイルシステムを作成し、 /etc/fstab ファイルを編集するにはsudo権限が必要です。

Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
