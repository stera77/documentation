getIpAddresses
~~~~~~~~~~~~~~

Name
++++

.. getIpAddresses - retrieve the internal (private) IP of the server using the ifconfig command
getIpAddresses - ifconfigコマンドを使用して、サーバーの内部（プライベート）IPアドレスを取得します

Synopsis
++++++++

getIpAddresses

Description
+++++++++++
.. It retrieves the internal (private) IP of the server using the ifconfig command
これは、ifconfigコマンドを使用して、サーバーの内部（プライベート）IPアドレスを取得します。

Options
+++++++
None


Invocation
++++++++++

.. It can be used by service configuration scripts when it is not possible to obtain the private IP address using other methods.
他の方法を使用して、プライベートIPアドレスを取得することができないとき、サービスの構成スクリプトを使用することができます。

Dependencies
++++++++++++

* ifconfig


Permissions
+++++++++++

.. It is launched by the enstratus user.
これはenstratusユーザーによって起動されます。

Overrides
+++++++++

Override: No

Replace: No
