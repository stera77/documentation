.. Overview
概要
--------

.. What's in, and what is, a service?
サービスとは何であり、中に何があるのか？
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. A service is a file stored in cloud file storage. Services can be tied to tiers and
   connected to each other by a special relationship called a dependency. 
サービスは、クラウド ファイルの記憶域に格納されたファイルです。サービスは、層に接続することができ、
依存関係と呼ばれる特別な関係でお互いに接続されています。

.. Using enStratus automation, services are downloaded to servers when servers reach a
   running state. The enStratus agent downloads, extracts, and executes a service
   configuration routine written by the application designer.
enStratus自動化を使用して、サーバがラン状態を実行に到達したとき、
サービスがサーバーにダウンロードされます。 enStratusエージェントはダウンロード、抽出、およびアプリケーション設計者に
よって書かれたサービス構成ルーチンを実行します。

.. Readers familiar with configuration management services such as Chef should approach
   services in a similar way to a recipe. Services are deployed onto virtual machines that
   are configured accoring to their launch configuration.
シェフなどの構成管理サービスに精通している読者は同様の方法でサービスをレシピに近づけます。
サービスは、起動構成に従って構成されている仮想マシンに配備されます。

.. Services: Logically
サービス：論理的に
~~~~~~~~~~~~~~~~~~~

.. enStratus makes a logical connection between tiers and services. Services are tied to
   tiers because tiers are able to span across cloud regions, for example a tier that spans
   AWS region US-East and AWS region US-West.
enStratusは、階層とサービス間の論理的な接続を行います。層は、クラウドリージョン間に
またがることができるのでサービスは、層に関連付けられています。
例えば、米国東部地域のAWSリージョンと米国西部地域のAWSリージョンにまたがる層です。

.. Beyond spanning tiers across regions within a single cloud, tiers are capable of spanning
   across several clouds as shown in the diagram below.
単一のクラウド内のリージョンの間にまたがるだけでなく、層は、更に広がることが可能です。
次の図に示すように、いくつかのクラウドをまたがることが可能です。

.. figure:: ./images/spanningClouds.png
   :height: 300px
   :width: 800 px
   :scale: 99 %
   :alt: Tier Spanning Clouds
   :align: center

   Tier Spanning Clouds

.. This implementation depicts a tier spanning between two public clouds, in this case Amazon
   AWS and Rackspace. It is equally possible to span a tier into a private cloud as well.
この実装は1つの層が、2つのパブリック　クラウドの間にまたがっていることを示しています。このケースでは、
アマゾンAWSとRackspaceです。それだけでなく、プライベート　クラウド内に広がることも同様に可能です。


.. Services: Physically
サービス：物理的に
~~~~~~~~~~~~~~~~~~~~
.. Physically, services are stored in cloud storage and downloaded as part of the start of a
   deployment. Once downloaded, services are installed onto servers that are running within
   a tier.
物理的に、サービスは、クラウド　ストレージに格納されていて、配備の開始の一部としてダウンロードされます。
ダウンロードされると、サービスは、層内で実行されているサーバにインストールされます。
