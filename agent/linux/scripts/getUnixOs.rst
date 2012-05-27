getUnixOS
~~~~~~~~~

Name
++++
.. getUnixOS -  Identifies Linux or Unix flavour
getUnixOS -  LinuxやUnixのフレーバーを識別します。

Synopsis
++++++++
getUnixOS

Description
+++++++++++
.. Identifies the Linux or Unix flavour based on the contents of the /usr/bin/lsb_release file
これは /usr/bin/lsb_release ファイルの内容に基づいてフレーバーを識別します。

Options
++++++++

None

.. Examples
例
++++++++

.. code-block:: sh

	$ getUnixOS 
	UBUNTU

Invocation
++++++++++

.. It may be invoked by any script that needs to determine the Linux flavour in the server
これは、サーバのLinuxフレーバを判別する必要があるすべてのスクリプトによって呼び出されるかもしれません。

Dependencies
++++++++++++

* No

Permission
++++++++++

.. No administrative permission required.
管理者権限は必要ありません。

Overrides
+++++++++

Override: No

Replace: No
