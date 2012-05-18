.. Firewalls
ファイアウォール
---------
.. Firewalls, or security groups, in enStratus control accessibility to running servers. Each
   account has a firewall called 'default' that is the default firewall into which all
   servers are launched.
enStratusにおいて、ファイアウォール、またはセキュリティグループは実行中のサーバーへのアクセシビリティを
コントロールします。各アカウントは、'default'と呼ばれるデフォルトのファイアウォールを持っていて、すべての
サーバの中で起動されます。

.. note:: .. The terms firewall and security group are interchangeable in enStratus.
ファイアウォールとセキュリティグループの用語のはenStratus内で互換性があります。

.. Security groups are applied to servers. Servers are part of security groups. A server is
   added to a security group at the time of server start. It is not currently possible to
   change the security group of a server post-launch. This is far less of a limitation than
   it sounds because the individual rules that comprise a security group can be changed at
   any time.
セキュリティグループは、サーバーに適用されます。サーバーは、セキュリティグループの一部です。サーバは
サーバ起動時にセキュリティグループに追加されます。現在のところ起動後にはサーバーのセキュリティグループの
変更はできません。このことは、セキュリティグループを構成する個々の規則は何時でも変更できますので聞こえより
はるかに制限は少ないです。

.. figure:: ./images/securityGroups.png
   :height: 300px
   :width: 500 px
   :scale: 95 %
   :alt: Security Groups
   :align: center

   Security Groups

.. Generally, the process for managing firewalls is to first create the security group and
   then choose a security group into which servers will be launched at start.
一般的には、ファイアウォールの管理プロセスは、最初にセキュリティグループを作成することであり、
その後、起動時にサーバが属するセキュリティグループを選択します。

.. To access firewalls in the enStratus console, navigate to Infrastructure > Firewalls. A
   listing of the active firewalls will be shown. To add a new firewall, click on the
   +create_firewall. Only two pieces of information are required to create a firewall: A
   name, billing code, and an optional group.
enStratusコンソールでファイアウォールにアクセスするには、 Infrastructure > Firewalls に移動します。
アクティブなファイアウォールのリストが表示されます。新しいファイアウォールを追加するには、 +create_firewall をクリックします。
ファイアウォールを作成するためは名、課金コード、およびオプションのグループの2つの情報のみが必要されています。
。

.. figure:: ./images/createFirewall.png
   :height: 250px
   :width: 500 px
   :scale: 75 %
   :alt: Create Security Group
   :align: center

   Create Security Group

.. Once the firewall has been saved, it will be added to the list of active firewalls. Once
   the firewall is active, it will be provided as an option when launching new servers.
ファイアウォールが保存されれば、アクティブなファイアウォールのリストに追加されます。
新規サーバの起動時にファイアウォールがアクティブになれば、それがオプションとして提供されます。

.. Editing Firewalls
ファイアウォールの編集
~~~~~~~~~~~~~~~~~
.. To edit an existing firewall, select the green action button that corresponds to the
   firewall targeted for editing. A dialog box will appear showing the rules that comprise
   the firewall.
既存のファイアウォールを編集するには、編集の対象となるファイアウォールに対応する緑色のアクションボタンを選択します。
ダイアログボックスには、ファイアウォールを構成するルールを示す表示されます。

.. The six columns that make up the firewall are:
ファイアウォールを構成する6つのカラムは、次のとおりです。

.. 1. Source - A common name for the firewall rule. Standard networks naming conventions apply
   to this column. If a standard network is used, the CIDR column will be automatically
   populated with the information defined by that standard network.
1. ソース - ファイアウォールルールの共通名。このカラムには標準的なネットワークの命名規則が適用されます。
標準的なネットワークが使用されている場合は、CIDRのカラムには自動的に標準的なネットワークで定義されている
情報が割り当てられます。

.. 2. CIDR - CIDR means Classless Inter-Domain Routing. Practically, this means / or "slash"
   notation is required. For example, to apply a rule to only one IP address, the rule takes
   the form: 1.2.3.4/32. This is practical for creating a rule for your home IP address. This
   type of notation allows for firewall rules that encompass ranges of IP addresses. For
   example, to apply a rule to a range of 256 IP addresses, this represents a rule of the
   form: 1.2.3.0/24. This is a very powerful feature of firewall rule creation.
2. CIDR - CIDRはクラスレスのドメイン間ルーティングを意味します。実際に、これは/または "スラッシュ"表記法が
必要となることをを意味します。たとえば、1つのIPアドレスにルールを適用するには、ルールは形式：1.2.3.4/32 を取ります。
これはホームIPアドレスのルールを作成するための実用的ルールです。この表記の種類は、IPアドレスの範囲を包含
するファイアウォールルールを可能にします。例えば、256のIPアドレスの範囲にルールを適用するには形式：1.2.3.0/24 と表記します。
これは、ファイアウォールルールの作成の非常に強力な機能です。

.. 3. Method - Refers to the program being used, and provides a common name for the program. For
   example, MySQL or SSH. Standard ports can be used to modify this part of the ruleset.
   Protocol, From Port and To Port are automatically populated with the information provided
   by that standard port.
3. メソッド - これは使用されているプログラムを参照し、プログラムの一般的な名前を提供します。
たとえば、MySQLまたはSSHです。標準ポートは、ルールセットのこの部分を変更するために使用することができます。
プロトコル、 From Port と To Port は自動的に標準ポートで提供される情報が割り当てられます。

.. 4. Protocol - Indicates the type of protocol that will apply, TCP, UDP, or ICMP.
4. プロトコル - TCP、UDP、またはICMPを適用するプロトコルのタイプを示します。

.. 5. From Port - The starting port for the rule.
5. From Port - ルールの開始ポートを指定します。

.. 6. To Port - The ending port for the rule.
6. To Port - ルールの終了ポートを指定します。

.. Standard Networks and Ports
標準ネットワークとポート
~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. enStratus introduces the concept of a standard network to firewalls. A standard network is
   a user-defined commonly used network that can be quickly added to a firewall using a
   common name that maps to the IP address specified. This functionality creates the
   advantage of being able to easily identify, add, and remove specific firewall rules among
   what may be a long list of rules.
enStratusは、ファイアウォールに標準的なネットワークの概念を導入しています。
標準的なネットワークはユーザ定義の一般的に使用されるネットワークで、指定IPアドレスにマッピングされた一般的な名前を
使用して、ファイアウォールにすぐに追加することができます。
この機能は、次の利点を生みだします。それは特定のファイアウォールルールのどんなに長いリストであってもその中から
簡単に識別できること、追加、および削除できることです。

.. For example, if a user typically conncects from a particular office IP address, this
   address should be added as a standard network and named appropriately for ease of
   identification.
たとえば、ユーザーが通常、特定のオフィスのIPアドレスから接続している場合は、このアドレスは、
標準的なネットワークとして追加され、容易に識別するために適切な名前を付ける必要があります。


.. Similarly, standard ports are user-defined commonly used ports that typically map to a
   specific application. For example, if an application is required to allow connections on
   port 5555, a standard port can be defined to identify that application by a common name
   and add it to the firewall.
同様に、標準のポートは、通常に特定のアプリケーションにマッピングされる、ユーザー定義の一般的に
使用されるポートです。例えば、もしアプリケーションがポート5555上の接続を許可する必要があるとき、
標準ポートを共通の名前で、そのアプリケーションを識別するために定義して、ファイアウォールに追加
することができます。

.. Standard networks are defined in Company Settings > Standard Networks. Every enStratus
   account has some default rules defined in a default firewall to allow for the enStratus
   monitoring service to connect to running servers. To define a new standard network, select
   +add_new_standard_network and complete the resulting dialog box.
標準ネットワークは、 Company Settings > Standard Networks で定義されています。すべてのenStratus
アカウントはenStratusの監視サービスが実行中のサーバに接続することを許可にするためにデフォルトの
ファイアウォールで定義されているいくつかのデフォルトルールを持っています。
新しい標準的なネットワークを定義するには、+add_new_standard_network を選択し、その結果として表示
されるダイアログボックスを完了します。

.. figure:: ./images/addStandardNetwork.png
   :height: 300px
   :width: 400 px
   :scale: 95 %
   :alt: Standard Network
   :align: center

   Standard Network

.. Once the standard network is saved, it will be added to the list of standard networks.
標準的なネットワークが保存されると、それは標準的なネットワークのリストに追加されます。


.. Before we return to editing the firewalls, let's define a standard port. Navigate to
   Company Settings > Standard Ports. To add a new standard port, select
   +add_new_standard_port and complete the resulting dialog box.
ファイアウォールの編集に戻る前に、標準のポートを定義しましょう。Company Settings > Standard Portsに
移動します。新規の標準ポートを追加するには +add_new_standard_port を選択して、
表示されるダイアログボックスを完了します。

.. figure:: ./images/addStandardPort.png
   :height: 300px
   :width: 400 px
   :scale: 95 %
   :alt: Standard Port
   :align: center

   Standard Port

.. Once the standard port is saved, it will be added to the list of standard ports.
標準のポートが保存されると、それは標準的なポートの一覧に追加されます。

.. Returning again to editing firewalls, the new standard network called Office IP and the
   standard port called Custom Application can be quickly added to any of the existing
   firewalls.
ファイアウォールの編集に再び戻って、" Office IP "と呼ばれる新規の標準的なネットワーク
と" Custom Application "と呼ばれる標準ポートは迅速に既存のどのファイアウォールにも追加することができます。

.. figure:: ./images/editFirewall.png
   :height: 160px
   :width: 900 px
   :scale: 75 %
   :alt: Edit Firewall Using Standard Port
   :align: center

   Edit Firewall Using Standard Port

.. note:: .. If a standard network or port is deleted, the rule will still be applied to the
     firewalls, it will only lose the customized name that was given and revert to a Custom
     rule.
  標準のネットワークまたはポートが削除された場合、ルールはまだファイアウォールに適用されているので、
  それは与えられたカスタマイズされた名前を失い、[カスタム設定]ルールに戻るだけです。

.. Starting a Server in Security Group
セキュリティグループ内のサーバーの起動
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. The final step in utilizing firewalls in the cloud is to apply a firewall group when
   starting a new server. To start a new server, navigate to Infrastructure > Machine Images.
   Select an image to launch and in the resulting dialog box, choose the security group to be
   applied to the resulting server. All of the rules comprising the security group will be
   applied to the server.
クラウドでファイアウォールを利用するの最後のステップは、新規サーバーを起動する時にファイアウォールグループ
を適用することです。新規サーバーを起動するには、 Infrastructure > Machine Images に移動します。
起動するイメージを選択し、表示されるダイアログボックスで、起動されたサーバーに適用するセキュリティグループを
選択します。セキュリティグループを構成するすべてのルールがサーバに適用されます。
。

.. figure:: ./images/startServerinFirewall.png
   :height: 400px
   :width: 500 px
   :scale: 85 %
   :alt: Start Server in Firewall
   :align: center

   Start Server in Firewall
