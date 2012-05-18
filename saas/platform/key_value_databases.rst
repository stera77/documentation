.. Key Value Databases
キー バリュー データベース
-------------------

.. enStratus Key/Value Databases (KV Databases or KVDB) are a simple solution for storing
   your data for high availability and scalability. With a KV database you get only what you
   need. You can simply query your data and return the results without having to manage
   different schemas for your stored data sets. You do not need to worry when storing new
   data because it is automatically indexed for you.
enStratusのキー/バリュー データベース（KVデータベースまたはKVDB）は高可用性とスケーラビリティのための
データを格納するための簡単なソリューションです。
KVデータベースを使用して必要なものだけを獲得します。
単にデータを照会して、保存されたデータセットの異なるスキーマを管理することなく結果を返すことができます。
新規のデータを保存するときに自動的にインデックスが作成されるため、心配する必要はありません。

.. Overview
概要
~~~~~~~~
.. enStratus currently supports the creation and termination of Amazon SimpleDB domains. See
   Amazon SimpleDB for more information and current pricing.
enStratusは、現在、 Amazon SimpleDB domains の作成と終了をサポートしています。
詳細と現在の価格については、Amazon SimpleDBをご覧ください。

.. KV databases are large collections of data organized into separate domains. The data is
   stored in hash tables that contain key to value pairs. The key to value pairs are
   attributes that can be searched in lexicographical queries.
KVデータベースは別々のドメインに編成されたデータの大規模なコレクションがあります。データは
キーと値のペアが含まれたハッシュテーブルに格納されています。キー　バリューのペアは
辞書式クエリで検索可能な属性です。

.. Creating a Key/Value Database
キー/バリュー　データベースの作成
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. To launch a new KV database in the enStratus console click on Platform > Key/Value
   Databases. Then click  +add key/value database.
enStratusコンソールで新規のKVデータベースを起動するには、プラットフォーム上で Platform > Key/Value Databases をクリックします。
次に +add をクリックし、キー/バリュー　データベースを追加します。

Screenshot 1

.. In the Create Key/Value Database form you will see the different fields for creating the
   KVDB.
Create  Key/Value Database フォームでは、KVDBを作成するための異なるフィールドが表示されます。


Screenshot 2

.. The **Name** field is for a custom name to associate with your database.
**Name** フィールドには、データベースに関連付けるためのカスタム名を対象とします。

.. The **Description** field can be a custom description for your database.
**Description** フィールドは、データベースのカスタム記述することができます。

.. The **Label** field helps you organize your KVDB instances by providing a unique color label.
**Label** フィールドには、独自のカラーラベルを提供することにより、KVDBインスタンスを整理するのに役立ちます。

.. **Billing Code** and **User Group** are the billing code and user group attributes that enStratus
   will use to track billing charges and access rights tied to the user management and
   billing code offerings of enStratus.
**課金コード** と **ユーザグループ** はenStratusが請求料金とアクセス権を追跡し、enStratusの
ユーザー管理と課金コードオファリングに関連付けるために使用する課金コードおよびユーザグループの属性です。

.. Upon save the KV database is launched. It can take up to 15 minutes to appear in the
   enStratus console.
保存時にKVデータベースが起動されます。それがにenStratusコンソール表示されるまでに最大15分かかることがあります。

.. Terminating Key/Value Databases
キー/バリュー　データベースの終了
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. To terminate a KVDB click actions > terminate in the Key/Value Databases table.
KVDBクリックアクションを終了するには キー/バリュー データベース テーブルの actions > terminate をクリックします。

Screenshot 3.
