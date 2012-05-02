.. Automation
自動化
==========

.. Introduction
はじめに
~~~~~~~~~~~~
.. enStratus automation encompasses many facets of infrastructure mangement and orchstration.
enStratus自動化は、インフラストラクチャの管理と統合の多くの側面を網羅しています。

#. .. Automated backups. enStratus will perform backup/maintenance of the application and
      hardware infrastructure according to the specification of the deployment. Backups
      include both snapshots and service-level backups.
   自動バックアップ。 enStratusは、アプリケーションのバックアップ/メンテナンスの実行および
   配備の仕様に従ってハードウェアインフラストラクチャを提供します。バックアップには
   スナップショットおよびサービス·レベルのバックアップの両方が含まれています。
#. .. Scalability. enStratus will scale the servers to closely match infrastructure with
      demand.
   スケーラビリティ。 enStratusはサーバーのインフラストラクチャを需要と密接に一致するようにスケールします
   。
#. .. Resiliency. Cloud servers by their nature are ephemeral, configuring a deployment will
      allow applications to survive the unexpected termination of a node.
   弾力性。その性質上、クラウド·サーバーは、一時的なものですが、   アプリケーションノードの
   予期しない終了後も存続することができるように配備を構成します。


.. Pre-requisites
前提条件
~~~~~~~~~~~~~~

#. .. The most important pre-requisite for automation is the installation of the enStratus
      agent. The enStratus agent is the secure access point to each running instance for the
      enStratus cloud management software.
   自動化のための最も重要な前提条件は、enStratusエージェントのインストールです。
   enStratusエージェントは、enStratusクラウド管理ソフトウェアにとって、各実行中のインスタンスへの
   セキュアなアクセスポイントです。

.. note:: .. This pre-requisite is one of the most frequently asked questions about
             automation. Before a machine image can be used in a deployment launch configuration, 
             the enStratus agent must be installed.
  この前提条件は自動化についてよく寄せられる質問の一つです。
  マシンのイメージは、配備された起動構成で使用する前に、
  enStratusエージェントをインストールする必要があります。


  .. For more information on how to install the agent, please see the agent documentation.
  エージェントをインストールする方法の詳細については、エージェントのマニュアルを参照してください。
