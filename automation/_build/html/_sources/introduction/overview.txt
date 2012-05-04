.. Overview
概要
========

.. Before embarking on cloud automation using enStratus, let's cover some terminology and
   concepts enStratus uses to automate and orchestrate cloud operations. The purpose of this
   section is to introduce at an academic level the components of an enStratus deployment.
enStratusを使用してクラウドの自動化に着手する前に、用語とenStratusが
クラウドの操作を自動化し、調整するために使用していますいくつかの概念を紹介しましょう。
このセクションの目的は、学術レベルでenStratus配備のコンポーネントを導入することです。

.. Start at the End
終了時に開始
----------------
.. A properly configured enStratus deployment is shown below. Each of the functional
   components will be introduced in turn.
適切に構成されたenStratus配備を以下に示します。各機能的
コンポーネントを順番にご紹介します。

.. figure:: ./images/deployment7.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: enStratus Deployment
   :align: center

   enStratus Deployment

.. The fully operational enStratus deployment is a mechanism for deploying, orchestrating,
   and automating an n-tier application. The above figure shows a 3-tier deployment, running
   in two separate clouds with load balancing and a web application that depends on a
   database. Let's build the deployment from the ground up.
完全に機能するenStratusの配備は、n層のアプリケーションを配備・調整し自動化するためのメカニズムです。
上の図は、3層配備を示していて、2つの別々のクラウドの中でロードバランシングと1つの
データベースに依存するWebアプリケーションが動作しています。グラウンドから配備を構築しましょう。

.. Takeaway Points
持ち帰り用のポイント
---------------
#. .. A deployment is a logical grouping of tiers, services, and launch configurations. Resources provisioned as part of a deployment are "special" in the sense that they are subject to the governing rules set by the user.
   配備は層、サービス、および起動構成の論理グループです。
   配備の一部としてプロビジョニングされたリソースは、ユーザーによって設定された規則に従うという意味で "特別"です。
#. .. Tiers are logical groupings of servers.
   層は、サーバーの論理グループです。
#. .. Services are software packages that are tied to tiers. 
   サービスは、階層に関連付けられたソフトウェアパッケージです。
#. .. Services can have datasources passed to them and can depend on each other, or each other's datasources.
   サービスは、データソースを渡され、他のサービスと相互に依存し、または他のサービスのデータソースに依存することができます。
#. .. Dependencies tell enStratus how to orchestrate service installation and what information is appropriate to pass to each VM.
   依存関係はどのようにサービスインストールを調整し、どの情報を各VMに渡すことが適切であるかをenStratusに伝えます。
#. .. Launch Configurations define the size of the VM, volumes, configuration management, and firewalls for each server.
   起動設定は、VM、ボリューム、構成管理、および各サーバーのファイアウォールのサイズを定義します。
#. .. As servers are started, enStratus orchestrates the installation of services and datasources according to their dependency relationships.
   サーバーが開始されると、enStratusは、サービスとその依存関係に従って、データソースのインストールを調整します。

.. The Deployment
配備
--------------
.. figure:: ./images/deployment1.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: enStratus Deployment
   :align: center

   enStratus Deployment

.. An enStratus deployment is a container enStratus uses to manage all of moving parts of an
   aribtrarily complex application. The resources running in the deployment are subject to
   the constraints the deployment architect places on it, such as when to scale, when backups
   are run, and what relationships exist between deployment components.
enStratus配備は、enStratusが任意の複雑なアプリケーションの全ての可動部分を管理するために使用するコンテナです。配備内で実行されているリソースは、どんな時にスケールするか、何時バックアップするか、配備コンポーネントの間にどんな関係があるかなどのデプロイメント　アーキテクトが置く制約に従います。

.. The deployment itself needs only a name, this initializes the deployment environment for
   the rest of the build. The first component added to this deployment is called a tier.
配備自体は名前だけを必要とし、残りの部分をビルドするため、配備環境を初期化します。
。この配備に最初に追加されたコンポーネントは、層と呼ばれています。

.. A place holder for adding a load balancer is automatically generated.
ロードバランサを追加するためのプレースホルダが自動的に生成されます。

.. Add First Tier
最初の層の追加
--------------
.. An enStratus tier is a component that can have services (software) tied to it. The tier
   layer is where attributes such as minimum/maximum servers and scaling rules are set.
enStratus層は、それに結びつけられたサービス（ソフトウェア）を持つことができるコンポーネントです。層
レイヤは最小値/最大サーバやスケーリングルールなどの属性が設定されている場所です。

.. In assembling the deployment, the first thing to do after creating the new deployment is
   to add tiers. 
配備を組み立てるにあたって、新しい配備を作成した後、まず最初に行うのは層の追加です。

.. figure:: ./images/deployment2.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Tier Added
   :align: center

   Tier Added

.. Adding the first tier prompts enStratus to create a placeholder for a launch
   configuration. 
最初の層を追加すると、enStratusは起動構成ためのプレースホルダを作成するように求めます。

.. Add Second Tier
2番目のの層の追加
---------------
.. Next we add another tier to bring a more classic 3-tier architecture more clearly into
   view. A launch configuration will be automatically generated as a placeholder for the
   second tier.
次に、より古典的な3層アーキテクチャがより明確に見えるように別の層を追加します。起動設定が自動的に2番目の層のプレースホルダとして生成されます。

.. Once the tiers are in place, it's time to start adding services to them.
層が配置されれば、それにサービスの追加を開始するときです。

.. figure:: ./images/deployment3.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Second Tier Added
   :align: center

   Second Tier Added

.. Add Services
サービスの追加
------------
.. Services are connected to a deployment at the tier level. Put simply, a service is a
   file that is downloaded from cloudfiles storage to every server running in the tier.
サービスは、層レベルでの配備に接続されています。簡単に言えば、サービスは
クラウド　ファイル　ストレージからその層で実行されているすべてのサーバーにダウンロードされたファイルです。

.. Examples of services include MySQL, Postgres, Wordpress, Drupal, Tomcat, etc.
サービスの例としては、MySQL、Postgres、Wordpress、Drupal、Tomcatなどが含まれます。

.. figure:: ./images/deployment4.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Services Added to Tiers
   :align: center

   Services Added to Tiers

.. Add Data Source (optional)
データソースの追加（オプション）
--------------------------
.. In some cases, it may be appropriate to connect a datasource to a service. In our example
   deployment, the lower tier is a database tier and the service connected to it is a
   database dump file for MySQL.
いくつかのケースでは、サービスにデータソースを接続することは適切であるかもしれません。私たちの配備例では、下位層がデータベース層であり、それに接続されているサービスはMySQLのデータベースのダンプファイルです。

.. By connecting a datasource to a service, enStratus knows to first configure the service,
   then pass in the datasource to the service. Proper ordering of operations like that is
   called *orchestration*.
サービスにデータソースを接続することにより、enStratusは、最初にサービスを設定して、
そのサービスにデータソースに渡すこと知っています。そのような適切な操作の順序付けを
*オーケストレーション*と呼びます。

.. figure:: ./images/deployment4a.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Data Source Added to Service
   :align: center

   Data Source Added to Service

.. Establish Dependencies
依存関係の確立
----------------------
.. A dependency is a logical connection between services that tells enStratus about the
   relationship two services have. Here, we've established a dependency relationship between
   the top (application) tier and the database service's datasource. 
依存性は2つのサービス間の関係をenStratusを伝えるサービス間の論理接続です。ここでは、最上位（アプリケーション）層とデータベースサービスのデータソース間の依存関係を確立しました。

.. A special type of dependency is established for the application service to the load
   balancer as well.
同様にアプリケーション　サービスからロードバランサへの特殊なタイプの依存関係が確立されます。

.. figure:: ./images/deployment5.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Establish Dependencies
   :align: center

   Establish Dependencies

.. Establishing dependencies tells enStratus how to orchestrate the deployment of the
   services. Given the dependency relationships described here, the following events will
   happen:
依存関係を確立することでenStratusにサービスを配備する要領を指示します。ここで説明された依存関係を与えられて、次のイベントが発生します:

#. .. Service installed on the Database Tier
   サービス　データベース層にインストールされています
#. .. Datasource installed on the Database Service
   データソース　データベース　サービスにインストールされています
#. .. Service installed on the Application Tier.
   サービス　アプリケーション層にインストールされています。
#. .. enStratus passes information to the database server so it can grant access to the application servers.
   enStratusは、アプリケーション　サーバーへのアクセス権を付与することができるようデータベース　サーバーに情報を渡します。
#. .. enStratus passes information to every server in the application tier about how to find the datasource.
   enStratusは、アプリケーション層のすべてのサーバーにデータソースを見つける方法についての情報を渡します。
#. .. enStratus passes information to the load balancer about each application node.
   enStratusは、各アプリケーション　ノードに関する情報をロードバランサに渡します。

.. At this point, the deployment is nearly configured. We have yet to tell enStratus about
   the servers that will house the services.
この時点で、展開はほぼ設定されています。我々はenStratusにサービスを収容するサーバーについての情報をまだ伝えていません。

.. Launch Configuration
起動構成
--------------------
.. A launch configuration is a definition that governs the resources provisioned to support a
   virtual machine. 
起動構成は仮想マシンサポートするためにプロビジョニングされたリソースを管理する定義です。
。

.. An enStratus launch configuration includes attaching, raiding, and encrypting volumes,
   configuration management runs such as Chef, as well as the firewall into which the server
   is started.
enStratusの起動設定には、アタッチング、レイディング、ボリュームの暗号化および構成管理が含まれており、
サーバ内でファイアウォールだけでなく、 Chef も起動されます。

.. A launch configuration is typically tied to a region within a cloud.
起動設定は、通常、クラウドが存在するリージョンに接続されています。

.. Now the deployment is complete, but to take the deployment concept to it's logical
   conclusion, let's demonstrate adding another region to this deployment.
さて配備が完了すると、論理的な結論として配備のコンセプトを取ります。この配備に別の領域を追加してみましょう。

.. Adding a Second Region
2番目のリージョンの追加
----------------------
.. enStratus will prompt the user to add a launch configuration for the newly added region.
enStratusは、ユーザーに新しく追加されたリージョンの起動設定を追加することを求めます。

.. No other conifguration changes need to be made since enStratus decouples the service
   concept from the launch configuration. 
enStratusはサービス　コンセプトと起動構成を分離していますので、他の構成変更は行う必要はありません

.. figure:: ./images/deployment6.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Add New Region
   :align: center

   Add New Region

.. Adding Configuration Management
構成管理の追加
-------------------------------
.. An optional configuration management execution call configured for each launch
   configuration if Chef/Puppet is used to configure servers.
もし Chef/Puppet がサーバを設定するのに使用されている場合、各起動構成にオプションの構成管理の呼び出しが構成されます。

.. figure:: ./images/deployment7.png
   :height: 600px
   :width: 600 px
   :scale: 75 %
   :alt: Add Configuration Management to Launch Configuration
   :align: center

   Add Configuration Management to Launch Configuration
