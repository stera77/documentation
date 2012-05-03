.. Introduction
はじめに
============

.. Automation Benefits
自動化の利点
~~~~~~~~~~~~~~~~~~~
#. .. Orchestration. enStratus will intelligently launch and configure your servers and applications.
   オーケストレーション　enStratusはインテリジェントに起動し、サーバおよびアプリケーションを構成します。
#. .. Automated backups. enStratus will perform backup/maintenance of the application and hardware infrastructure according to the specification of the deployment.
   自動バックアップ　enStratusは、配備の仕様に従って、アプリケーションおよびハードウェアインフラストラクチャの
   バックアップ/メンテナンスを実行します。
#. .. Scalability. enStratus will scale the servers to closely match infrastructure with demand.
   スケーラビリティ　enStratusは密接に需要とインフラストラクチャを一致するようにサーバーをスケールします。
#. .. Resiliency. Cloud servers by their nature are ephemeral, configuring a deployment will allow applications to survive the unexpected termination of a node.
   弾力性　その性質上、クラウド·サーバーが一時的であり、アプリケーションの配備構成を、
   ノードの予期しない終了後も存続するようにできます。
.. Pre-requsites
前提条件
~~~~~~~~~~~~~
.. Automation is often a task with many moving parts, here are some things to consider before
   attempting automation.
自動化は、しばしば多くの可動部分を持つタスクですので、自動化を試みる前に考慮すべきことが幾つかあります。

.. Cloud
クラウド
^^^^^
.. Your cloud provider must be reliable enough to start VM in a timely fashion. A scalable
   application stack will typically require the starting and stopping of many vm
   simultaneously.
クラウドプロバイダには十分な信頼性があり、タイムリーにVMを起動できなければなりません。スケーラブルな
アプリケーションスタックは通常、多くのVMの起動と同時に停止が必要になります

.. Storage
ストレージ
^^^^^^^
.. enStratus considers two types of cloud storage: Block and File. File storage is also known
   as object storage. enStratus automation depends heavily on cloud files storage. 

   Block storage is sometimes referred to as a "data" disk offering. This type of storage can
   also be quite useful during automation, although it is not required.
enStratusは、クラウドストレージの2つのタイプを考慮します。： ブロックとファイル。
ファイルストレージはオブジェクトストレージとしても知られています。 enStratus自動化は、
クラウド　ファイル　ストレージに大きく依存しています。

ブロック　ストレージは、しばしば"データ"のディスクオファーリング呼ばれています。このタイプのストレージは
必須ではありませんが自動化には非常に有用です。

.. Application
アプリケーション
^^^^^^^^^^^
.. Attempting to do automation (scaling, recovery, cross-cloud) requires intimate application
   knowledge. The biggest challenge when it comes to automation is at the application layer. 

   Being able to handle a dynamically provisioned infrastructure on an application is the
   first step to being able to leverage dynamically provisioned resources. Consider:
自動化（スケーリング、回復、クロスクラウド）を実行しようとすると、
アプリケーションに対する親密な知識が必要です。自動化における最大の課題は、アプリケーション層です。

アプリケーション上に動的にプロビジョニングされたインフラストラクチャを操作することができることが
動的にプロビジョニングされたリソースを活用できることへの第一歩です。考えてみましょう。:

.. Best Practices
ベストプラクティス
^^^^^^^^^^^^^^

1. .. IP Addresses. Often, IP addresses change with every newly provisioned instance. A cloudy application will be able to leverage this for scalability.
   IPアドレス。多くの場合、IPアドレスはすべての新しくプロビジョニングされたインスタンスで変更します。
   クラウドのアプリケーションは、スケーラビリティのためにこれを活用できるようになります。
2. .. Storage. Storing data on ephemeral storage is risky, putting application/database data on more persistent data storage is preferable.
   ストレージ。データを一時的なストレージ上に格納するのは危険です、より永続的なデータストレージにアプリケーション/データベースのデータを置くのが望ましい。
3. .. Backups. enStratus considers two types of backups: Snapshots and Service. Used in combination, these backups provide a very reliable and customizable solution.
   バックアップ。スナップショットとサービス：enStratusは、バックアップの2つのタイプを考慮します。組み合わせて使用することで、これらのバックアップは非常に信頼性が高く、カスタマイズ可能なソリューションを提供します。
  * .. Snapshots: Backups accomplished by taking a snapshot of a data volume. The result of this operation is a snapshot.
    スナップショット：データボリュームのスナップショットをとることによってバックアップを達成します。
    この操作の結果はスナップショットです。
  * .. Services: Backups accomplished by calling a user defined script. The result of this operation is a file, which can be stored in cloud files storage.
    サービス：ユーザーがスクリプトを定義して呼び出すことによってバックアップを実行します。
    この操作の結果は、クラウド　ファイル　ストレージに格納することができるファイルです。
4. .. Disaster Recovery. Disaster recovery for enStratus means storing the files resulting
      from service backups in a geographically distinct cloud region (EC2 East, West, etc...) or
      a separate cloud altogether. 
   ディザスタリカバリ。 enStratusための災害復旧は、サービスのバックアップを地理的に異なったクラウドリージョン（EC2 East、 West、等..）またはお互いに完全に独立したクラウドに格納することです。