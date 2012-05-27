configureRaid
~~~~~~~~~~~~

.. configureRaid - Creates RAID devices
configureRaid - RAIDデバイスを作成します

Synopsis
++++++++

configureRaid DEVICE_ID VOLUMES...

Description
+++++++++++

.. It creates a RAID device from a list of storage devices. Currently only RAID 0 (striped) volumes are supported 
ストレージデバイスのリストからRAIDデバイスを作成します。
現在のところRAID 0（ストライプド）ボリュームだけがサポートされています。

Options
+++++++

.. DEVICE_ID
.. 	Last part of the Linux device name for the RAID device to be created (md0 for /dev/md0 by default)
DEVICE_ID
	RAIDデバイスのLinuxデバイス名の最後の部分（デフォルトでは /dev/md0 のための md0）を作成します。

.. VOLUMES	
.. 	List of devices to be added to the RAID volume
VOLUMES	
	RAIDボリュームに追加するデバイスのリスト

.. Examples
例
++++++++

.. /enstratus/bin/configureRaid md0 sdh sdi sdj
.. 	Creates the RAID 0 device /dev/md0 from volumes /dev/sdh, /dev/shi and /dev/sdj
/enstratus/bin/configureRaid md0 sdh sdi sdj
	ボリューム /dev/sdh、 /dev/shi と /dev/sdj から RAID 0 デバイス /dev/md0 を作成します。


Invocation
++++++++++

.. This script is called when:

.. * If a volume is created when manually launching a server from the Machine Images page and a RAID Level other that None is selected.
このスクリプトは、次の場合に呼び出されます。

* サーバーがマシンイメージページから手動で起動され、RAIDレベルが[None]以外を選択されてボリュームが作成されからたとき。


Dependencies
++++++++++++

* sudo
* mdadm
* md kernel module

Permission
+++++++++++

.. It is launched by the enstratus user. It needs sudo authority for creating the array
これはenstratusユーザーによって起動されます。アレイを作成するためにはsudo権限が必要です。

Overrides
+++++++++

Override: Yes, pre and post


Replace: Yes
