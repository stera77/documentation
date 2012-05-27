addUser
~~~~~~~

NAME
++++

.. addUser - Grants the specified user shell access to the server
addUser - 指定したユーザーにサーバーへのシェルアクセスを許可します。

SYNOPSIS
++++++++

addUser CUST_ID USER_ID FIRST_NAME LAST_NAME ADMINISTRATOR

DESCRIPTION
+++++++++++

.. It creates a system user for Linux/Unix servers. It can be created as a regular non-privileged user or as an administrative one that can use sudo to gain root privileges . Additionally enStratus copies user's public key to ~/.ssh/authorized_keys to allow secure passwordless authentication.
これは、Linux/ Unixサーバ用のシステムユーザーを作成します。これは、通常の非特権ユーザーとして、またはroot権限を得るためにsudoを使用することができ、管理ユーザーとして作成することができます。
さらにenStratusは、セキュアなパスワード認証を許可するため ~/.ssh/authorized_keys にユーザーの公開鍵をコピーします。

OPTIONS
+++++++

.. CUST_ID
.. 	Customer id within enStratus. It is used as the Linux primary group for the new the user.
CUST_ID
	enStratus内の顧客IDを指定します。これは新規ユーザーのためのLinuxのプライマリグループとして使用されます。

.. USER_ID
.. 	User name to be created. User Ids in enStratus follow the pattern pXXX, where XXX is a numeric sequence.
USER_ID
	ユーザー名を作成することができます。 enStratusのユーザーIDは、XXXは数値の配列であり、パターンpXXXに従います。

.. FIRST_NAME
.. 	First name of the user according to his/her profile.
FIRST_NAME
	プロフィールによるユーザーの最初の名前

.. LAST_NAME
.. 	Last name of the user according to his/her profile.
LAST_NAME
	プロフィールによるユーザーの姓

.. ADMINISTRATOR
.. 	If set to "true" the user will have administrative privileges via sudo.
ADMINISTRATOR
	"true"に設定した場合、ユーザーは、sudoを介して管理者権限を持っています。

INVOCATION
++++++++++

.. This script is called when a user is added manually to a running server using the Shell Access control in the Servers list.
実行中のサーバーでシェルのアクセス制御を使用してユーザーがサーバーリストに手動で追加される場合、このスクリプトが呼び出されます。


DEPENDENCIES
++++++++++++

* sudo
* useradd / usermod
* openssl for automatically generating a strong password.

PERMISSIONS
+++++++++++

.. It is launched by the enStratus user. It needs sudo authority for creating the user.
これはenStratusユーザーによって起動されます。ユーザーを作成するためにはsudo権限が必要です。


OVERRIDES
+++++++++

Override: Yes, pre and post

Replace: Yes
