assembleRaid
~~~~~~~~~~~~

.. assembleRaid - Assembles RAID devices
assembleRaid - RAIDデバイスをアセンブルします

Synopsis
++++++++

assembleRaid DEVICE_ID VOLUMES...

Description
+++++++++++

.. It assembles a RAID device from a list of storage devices. Currently only RAID 0 (striped) volumes are supported 
ストレージデバイスのリストからRAIDデバイスをアセンブルします。現在のところRAID 0（ストライプド）ボリュームのみがサポートされています。

Options
+++++++

.. DEVICE_ID
.. 	Last part of the Linux device name for the RAID device to be created (md0 for /dev/md0 by default)
DEVICE_ID
	作成されたRAIDデバイスのLinuxデバイス名の最後の部分（デフォルトでは /dev/md0 のためのmd0）

.. VOLUMES	
.. 	List of devices to be added to the RAID volume
VOLUMES	
	RAIDボリュームに追加するデバイスのリスト

.. Examples
例
++++++++

.. /enstratus/bin/assembleRaid md0 sdh sdi sdj
.. 	Creates the RAID 0 device /dev/md0 from volumes /dev/sdh, /dev/shi and /dev/sdj
/enstratus/bin/assembleRaid md0 sdh sdi sdj
	/dev/sdh、 /dev/shi と /dev/sdj ボリュームから /dev/md0 の RAID 0 デバイスを作成します。


Invocation
++++++++++

.. This script is called when:
このスクリプトは次の場合に呼ばれます。

.. * If a volume is created when manually launching a server from the Machine Images page and a RAID Level other that None is selected.
* 手動でマシンイメージページからサーバーが起動され、RAIDレベルが[無し]以外が選択されてボリュームが作成される場合。


Dependencies
++++++++++++

* sudo
* mdadm
* md kernel module

Permission
+++++++++++

.. It is launched by the enstratus user. It needs sudo authority for creating the array
これはenstratusユーザーによって起動されます。アレイを作成するにはsudo権限が必要です。


Overrides
+++++++++

Override: Yes, pre and post


Replace: Yes
