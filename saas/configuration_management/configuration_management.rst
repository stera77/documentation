.. Configuration Management
構成管理
========================

.. This section provides information on using configuration management systems within the
   enStratus console.
このセクションでは、enStratusコンソール内の構成管理システムを使用して情報を提供します。


.. The enStratus console allows you to manage resources using two kinds of configuration
   management systems, Chef and Object Store.
enStratusコンソールでは、シェフとオブジェクトストアの2つのタイプの構成管理システムを使用して
リソースを管理することができます。

.. Chef
シェフ
----
.. Chef is a configuration management tool created by Opscode. enStratus support both the
   hosted and private versions of Chef.
シェフはOpscodeによって作成された構成管理ツールです。 enStratusはシェフのホステッドとプライベートの
両方のバージョンをサポートします。


.. Object Store is a simple script based Configuration Management System that allows you to
   upload custom scripts into a cloud storage account, groups scripts into personalities, and
   automatically download and run the scripts when a new server is launched in your cloud
   account.
   Services
オブジェクトストアはシンプルなスクリプトベースの構成管理システムで、カスタムスクリプトを
クラウドストレージアカウントに、グループスクリプトをパーソナリティにアップロードし、
新規サーバーがクラウドアカウント内で起動されたときに自動的にダウンロードしてスクリプトを実行
することができます。
サービス

.. To implement configuration management, you must first configure a service under
   Configuration Management > Services. If you choose Chef, you must supply an endpoint for
   the service. If you choose Object Store, you must choose a region and then a directory in
   which to store your scripts.
構成管理を実装するには、まず Configuration Management > Services でサービスを構成する必要があります。
シェフを選択すると、サービスのエンドポイントを指定する必要があります。オブジェクトストアを選択すると、
リージョンとその次にスクリプトを格納するディレクトリを選択しなければなりません

.. Accounts
アカウント
~~~~~~~~

.. Once your service has been configured, you will need to create an account associated with
   that service under Configuration Management > Accounts. When you set up an account for a
   Chef service you associate a set of credentials with that account. Credentials are not
   necessary for Object Store services.
サービスが設定されたら、そのサービスに関連付けられたアカウントを Configuration Management > Accounts で
作成する必要があります。シェフサービスのアカウントを設定するとき、そのアカウントと資格情報のセットを
関連付けます。オブジェクトストアのサービスには資格情報は必要ありません。

.. Multiple accounts may be attached to the same Chef service with different sets of
   credentials, but an Object Store service can be associated with only one configuration
   management account at a time.
複数のアカウントを、別の資格情報セットで同じシェフサービスに付加できますが、
１つのオブジェクトストアサービスは1つの構成管理アカウントだけを関連付けることができます。

.. include:: chef.rst
