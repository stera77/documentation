removeUser
~~~~~~~~~~
.. k

Name
++++

.. removeUser - Removes shell access for the specified user.
removeUser - 指定したユーザーのシェルアクセスを削除します。

Synopsis
++++++++

removeUser USER_ID

Description
+++++++++++

.. It removes a system user account from Linux/Unix servers.
これは、Linux/ Unixサーバからシステム·ユーザー·アカウントを削除します。

Options
+++++++

.. USER_ID
.. 	User name to be created. User Ids in enStratus follow the pattern pXXX, where XXX is a numeric sequence.
USER_ID
	作成することができるユーザー名です。 enStratusのユーザーIDは、XXXは数値の配列であり、パターンpXXXに従います。

Invocation
++++++++++

.. This script is called when a user is removed manually from a running server using the Shell Access control in the Servers list.
実行中のサーバーからユーザーが手動でサーバーリスト内のシェルアクセス制御を使用して削除される場合、このスクリプトが呼び出されます。

Dependencies
++++++++++++

* sudo
* userdel

Permissions
+++++++++++

.. It is launched by the enStratus user. It needs sudo authority for deleting the user.
これはenStratusユーザーによって起動されます。ユーザーを削除するには sudo 権限が必要です。

Overrides
+++++++++

Override: Yes, pre and post

Replace: Yes
