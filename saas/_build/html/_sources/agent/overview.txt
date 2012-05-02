.. Overview
概要
--------
.. The enStratus agent is composed of a lightweight tomcat application used for communicating
   with the enStratus provisioning server and a set of associated shell scripts. The shell
   scripts are responsible for executing some actions on the server and are extensible by end
   users.
enStratusエージェントは軽量のTomcatアプリケーションで構成されていて、
enStratusプロビジョニングサーバおよび関連するシェルスクリプトセットとの通信に使用されます。
スクリプトは、サーバー上のいくつかのアクションを実行する役目があり、ユーザーによって拡張可能です。

.. The agent listens on port 2003 and takes action based on user input as in the case of
   adding a user to a system (the addUser script) and also automates actions such as
   attaching, formatting, encrypting, and mounting volumes as part of a fully automated
   enStratus deployment. Communication to and from the enStratus provisioning server is
   encrypted using SSL.
エージェントはポート2003をリッスンし、システムにユーザーを追加（adduserスクリプト）する場合
のようにユーザー入力に基づいてアクションを実行したり、
アタッチ、フォーマット、暗号化、、ボリュームのマウントなどのenStratus配備における完全自動化の
1部としての自動化アクションを実行します。
enStratusプロビジョニング·サーバーとの通信はSSLを使用して暗号化されます。

.. The enStratus agent is suitable for use on many popular GNU/Linux distributions such as
   Ubuntu, Debian, Cent OS, and Fedora. Additionally, the enStratus agent works on Windows
   Server 2003/2008. The agent functions in both 32- and 64-bit environments.
enStratusエージェントは、Ubuntu、Debian、Cent OS、およびFedoraのような多くの有名な
GNU / Linuxディストリビューション上での使用に適しています。
さらに、enStratusエージェントは、Windows Server 2003/2008の上で動作します。
エージェントは32ビット環境と64ビット環境両方で機能します。

.. The enStratus agent and the associated scripts can be found in /enstratus on a GNU/Linux
   system, and in C:\enstratus on a Windows server.
enStratusエージェントと関連スクリプトは、GNU / Linuxシステム上では/ enstratusで、
Windowsサーバ上では C:\\enstratus で見つけることができます。

.. Functionality
機能
^^^^^^^^^^^^^
.. Installing the enStratus agent opens the server to the full functionality provided by
   enStratus including user management, automation, scheduled termination, statistics,
   logging, and alerting.
enStratusエージェントをインストールすることにより、enStratusによって提供された
ユーザー管理、自動化、スケジュー化された停止、統計、ロギング、警告機能などの全機能を
サーバーで利用可能になります。

.. enStratus will monitor servers that have the agent installed and alert when status changes
   occur as in the case of an unexpected termination of the server. In an automated
   deployment, enStratus will take the further step of restoring lost servers.
enStratusは、エージェントがインストールされているサーバーを監視し、サーバの予期しない停止の
場合のような状態の変化の発生を警告します。
自動化配備では、enStratusは失われたサーバーを復元するための更なる一歩を踏み出すでしょう。
