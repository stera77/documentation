.. Provided Images
提供イメージ
---------------
.. The enStratus team provides some machine images that are pre-installed with the enStratus
   agent. These images are configured for use up to and including functioning as a member of
   an automated enStratus deployment. To that end, several changes have been made to the
   images which will be covered here.
enStratusチームはenStratusエージェントがプリインストールされているいくつかのマシンのイメージを
提供しています。
これらのイメージは、自動化されたenStratus配備のメンバーとしての機能を含み、最大限に使用するための
設定がなされています。そのためにイメージには、これから説明します、いくつかの変更が行われました。

.. By default, enStratus images come with the OSSEC host-based intrusion detection system.
   OSSEC alerting is integrated into the enStratus alerting system, so you will receive
   alerts based on events triggered by OSSEC both in the enStratus console, and depending on
   your alerts settings, via email. OSSEC is available only on the GNU/Linux platform.
デフォルトでは、enStratuseイメージにはOSSECホストベースの侵入検知システムが付属しています。
OSSECアラートは、警告がenStratus警告システムに統合されています。
それでOSSECによってトリガされるイベントに基づいたアラートは、enStratusコンソールと
アラート設定に応じては電子メール経由の両方で受信できます。
OSSECは、GNU / Linuxプラットフォーム上でのみ利用可能です。

.. enStratus images have installed some software packages to prepare servers started from
   that image for utilization in a wide range of purposes. The list of packages installed on
   enStratus images includes:
enStratusイメージには、広範囲な利用目的で使用するためのソフトウェアパッケージが、
そのイメージから起動できるように準備してインストールされています。
enStratuseイメージにインストールされているパッケージの一覧:

.. hlist::
   :columns: 3
  
   * zip
   * unzip
   * build-essential
   * python-mysqldb
   * xfsprogs
   * libapache2-mod-jk
   * cryptsetup
   * python-json
   * tomcat6
   * postfix
   * mysql-server
   * mdadm
   * sysstat
   * ha-proxy
   * secure-delete
   * apache2
   * cronolog

.. Not all of these packages are strictly necessary for using enStratus successfully.
   Examples of packages that are not required but are installed are cryptsetup, apache, and
   mysql. If, for example, cryptsetup is not installed, automated encryption of volumes will
   not be possible.
これらのパッケージ全てが、enStratusを正常に使用するために厳密に必要であるわけではありません。
必須ではありませんがインストールされているパッケージの例としては、cryptsetup、Apache、mysqlがあります。
たとえば、cryptsetupがインストールされていない場合は、ボリュームの自動暗号化ができません。

.. All of the software used by enStratus should be readily available in the distribution
   repositories.
enStratusで使用されるすべてのソフトウェアは、ディストリビューションリポジトリで
容易に利用可能であるべきです。

.. Some init scripts that would normally be in place are also moved to prepare the image for
   use in an automated enStratus deployment. For example, the mysql init script
   /etc/init.d/mysql is removed to prepare the image for use in conjunction with the mysql
   service image where enStratus handles the configuration, installation of the database,
   permissioning, and starting of the mysql service on an attached volume. More information
   on how service images work in a deployment can be found in the documentation on
   automation
いくつかのinitスクリプトはenStratusの配備の自動化で使用するために、通常の場所から移動されています。
例えば、mysqlのinitスクリプトの /etc/init.d/mysql はMySQLのサービスイメージと組み合わせて
使用するようにイメージから削除されます。
そこではenStratusは、データベースの構成、データベースのインストール、permissioning、
および接続されたボリューム上のMySQLサービスの開始などの操作を実施します。
配備におけるサービスイメージの仕組みの詳細については、自動化のドキュメント上に記載されています


.. All enStratus images also disable SSH access via password authentication. SSH access is
   available only via a public key authentication using the public key located in the user
   profile. SSH access as root user is also disabled. The root password is unknown.
すべてのenStratusイメージはパスワード認証を経由したSSHアクセスを無効にします。 SSHアクセスは、
ユーザプロフィール内の公開鍵を使用した公開鍵認証でのみ利用可能です。
rootユーザとしてのSSHアクセスは無効です。rootのパスワードは不明です。

