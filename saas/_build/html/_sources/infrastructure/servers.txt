.. Servers
サーバ
-------
.. enStratus monitors all servers in your account. Use the green actions button to access
   your server. If the enStratus agent is not installed on the server, the options available
   are limited to getting information, rebooting, pausing/starting, or terminating the
   server. If the enStratus agent is installed on a running server, additional functionality
   is included in the actions menu.
enStratusは、アカウント内のすべてのサーバーを監視します。緑色のアクションボタンを使用してサーバにアクセスします。
サーバにenStratusエージェントがインストールされていない場合、利用できるオプションは、サーバ情報の取得、再起動、
一時停止/起動、または終了に限定されています。enStratusエージェントが実行中のサーバーにインストールされている場合は、
追加機能がアクションメニューに含まれています。

.. Expanded information 
補足情報
~~~~~~~~~~~~~~~~~~~~
.. * Info: Expanded information regarding server attributes. Including comprehensive hardware information such as logical volumes attached, filesystems used, encryption, and memory.
   * Analytics: A graphical representation of CPU Load (in %) over the last hour.
   * Console: Hypervisor information.
   * Agent: Agent logging capturing events such as adding/removing users, Host Intrusion Detection System alerts, and customizable information messages. 
* 情報：サーバの属性に関する拡張情報を表示します。接続された論理ボリューム、使用されたファイルシステム、暗号化、メモリなどの包括的なハードウェア情報を含みます。
* 分析：過去1時間のCPU負荷のグラフィカルな表現（％）です。
* コンソール：ハイパーバイザ情報。
* エージェント：エージェントロギングは、ユーザーの追加/削除、ホスト侵入検知システムのアラート、およびカスタマイズ可能な情報メッセージをなどのイベントをキャプチャしています。

.. Make Image
イメージの作成
~~~~~~~~~~
.. Making a machine image means making a saved copy of the server state for future use.
   Machine images will show up in the tab. Machine images should be made whenever changes are
   made to the operating system such as patches or updates.
マシンのイメージを作ることは将来の使用のためにサーバの状態の保存されたコピーを作ることを意味します。
マシンのイメージは、タブに表示されます。パッチやアップデートなどのオペレーティングシステムに加えられた変更があるたびに
マシンのイメージは作られるべきです。

.. Make Snapshot
スナップショットの作成
~~~~~~~~~~~~~
.. Making a snapshot means create a differential backup of any attached volumes.
スナップショットを作ることは接続されているすべてのボリュームの差分バックアップの作成を意味します。

.. Shell/Remote Access
シェル/リモートアクセス
~~~~~~~~~~~~~~~~~~~

.. Shell (Linux) and remote (Windows) access refers to creating user accounts on running
   servers. Each user in enStratus is assigned a user code of the form p123. When remote
   access is granted on a Linux server, a home user account is created on that server and the
   public ssh credentials defined in the enStratus user profile are set for the user. On
   Windows, a home account is created and the user can access the running server using the
   RDP password set in the enStratus profile.
シェル（Linux）とリモート（Windows）のアクセスは、実行中のサーバにユーザーアカウントを作成することです。
enStratus内の各ユーザーは、フォーム P123 のユーザーコードが割り当てられています。リモートアクセスが
Linuxサーバに許可された時、ホームユーザーアカウントが、そのサーバー上で作成され、enStratusの
ユーザープロファイルで定義されたパブリックSSH資格情がユーザに設定されています。Windows上で、
ホームアカウントが作成され、ユーザはenStratusプロファイルに設定されたRDPパスワード使用して、
実行中のサーバーにアクセスすることができます。

.. note:: .. Before granting shell/remote access to a server, the user must define their
     public ssh key and RDP password in their user profile. If the credentials change, the
     remote servers are not notified of the change. To ensure the new credentials are used, the
     user must first be removed and re-added to remote access so the changes can propagate to
     their account. 
  シェル/サーバへのリモートアクセスを許可する前に、ユーザーは自分のユーザープロファイル内に
  SSH公開鍵とのRDPパスワードを定義する必要があります。資格情報の変更されても、リモートサーバーに変更が通知されません。新しい資格情報が
  使用されていることを確実に知らせるには、変更がアカウントに伝播できるように、最初にユーザーを削除し、
  リモートアクセスに再度追加する必要があります。

.. Reboot
再起動
~~~~~~
.. Reboot the running server. Rebooting does not change the IP address of the server. 
実行中のサーバーを再起動します。再起動は、サーバのIPアドレスを変更しません。

.. Pause
一時停止
~~~~~
.. Pause the running server. enStratus still monitors the server. IP address will change upon starting.
実行中のサーバーを一時停止します。enStratusはまだサーバーを監視しています。 IPアドレスは、起動時に変更されます。

.. Terminate
終了
~~~~~~~~~
.. Terminate the instance. No data on the instance will be saved. 
インスタンスを終了します。インスタンス上のデータは保存されません。

.. To rename a running server, click on the server name indicated by a brown dashed line. A
   text window will appear. Enter the desired name and select OK. The hostname of the server
   will be changed.
実行中のサーバーの名前を変更するには、茶色の点線で示されたサーバー名をクリックします。
テキストウィンドウが表示されます。希望する名前を入力し、[OK]を選択します。サーバのホスト名が
変更されます。

.. To change the label color of a running server, click on the label color and choose the
   desired color from the resulting choices.
実行中のサーバーのラベルの色を変更するには、ラベルの色をクリックして得られた選択肢の中から希望する色を選択します。
