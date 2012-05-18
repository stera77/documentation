.. Relational Databases
リレーショナルデータベース
--------------------

.. enStratus supports cloud based relational database management services through enStratus
   Relational Databases (RDBMS). This service allows the end user to operate, scale and
   manage their relational databases in the cloud. Relational database instances give you the
   full capabilities and features you would normally find on a familiar RDBMS.
enStratusはenStratusリレーショナルデータベース（RDBMS）を通じて、クラウドベースのリレーショナルデータベース管理サービス
をサポートしています。このサービスで、エンドユーザーは、クラウドでリレーショナルデータベースの
運用、スケールそして管理をすることができます。リレーショナルデータベースインスタンスは、通常おなじみのRDBMSに
見られる完全な機能を与えてくれます。

.. Overview
概要
~~~~~~~~
.. enStratus currently supports cloud based relational database management with Amazon
   Relational Database Service (Amazon RDS). With a relational database instance you get the
   functions of a traditional database, plus scalability and redundancy in the cloud.
enStratusは現在、Amazonリレーショナル·データベース·サービス（Amazon RDS）でクラウドベースの
リレーショナルデータベース管理をサポートしています。リレーショナルデータベースインスタンスを使用すると、
従来のデータベースの機能に加えて、クラウドのスケーラビリティと冗長性を取得します。

.. Creating a Relational Database
リレーショナルデータベースの作成

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. To create a new relational database in the enStratus console navigate to Platform >
   Relational Databases. Click on +add database in the right corner of the table.
enStratusコンソールで新規のリレーショナルデータベースを作成するには Platform > Relational Databases に移動します。
テーブルの右上隅にある +add database クリック追加します。

Screenshot 1.

.. Under the configuration tab you will see the fields for creating a database.
設定タブの下には、データベースを作成するためのフィールドが表示されます。

Screenshot 2.

.. The **Name** field is for a custom name to associate with your database.
**Name** フィールドには、データベースに関連付けるためのカスタム名を対象とします。

.. The **Description** field can be a custom description of your database.
**Description** フィールドは、データベースのカスタム記述をすることができます。

.. The **Label** field helps you organize your RDBMS instances by providing a unique color label.
**Label** フィールドには、独自のカラーラベルを提供することにより、RDBMSインスタンスを整理するのに役立ちます。

.. The **Engine** field currently supports MySQL 5.1 relational databases. More options will be
   provided as they become available.
**Engine** フィールドでは、現在MySQL 5.1 リレーショナルデータベースをサポートしています。
より多くの利用可能なオプションが提供されています。

.. The **Product** field displays the different sizes available for the RDBMS and should be
   chosen to fit your needs. Database operating costs are proportional to the size, measured
   in compute power, of the provisioned datbase. See Amazon RDS for more information and
   current pricing.
**Product** フィールドには、RDBMSのために利用可能でニーズに合うように選ばれた異なるサイズを表示します。
データベース運用コストは配備されたdatbaseのコンピューティングパワーで量られたサイズに比例します。
詳細および現在の価格については、Amazon RDSを参照してください。

.. The **Port** number is restricted to ranges 1150 – 65535.
***Port** 番号は 1150 – 6553 の範囲に制限されています。

.. For the **Zone** field it is highly recommended that you choose a zone that is in the same
   location as your primary application server.
**Zone** フィールドには、プライマリのアプリケーションサーバーと同じ場所のゾーンを選択することを強力にお勧めします。

.. Another Zone option is high availability. In AWS this is know as a Multi-AZ deployment.
   The high availability option improves database durability and takes extra measures to
   ensure the RDBMS has minimal down time. This involves provisioning and maintaining a
   running backup of the primary instance in another zone. If there is planned maintenance,
   instance failure or availability zone failure in the primary zone the RDBMS will
   automatically failover to the backup instance.
別のゾーンのオプションは、高可用性です。 AWSでは、これはマルチAZ配備として知られています。
高可用性オプションは、RDBMSに特別な措置を講じダウンタイムを最小限に抑えることを保証して、
データベースの耐久性を向上させています。これは、別のゾーンでのプロビジョニングとプライマリインスタンスの
バックアップの実行保守を含みます。メンテナンスが予定されている場合やプライマリゾーン内のインスタンス障害または
アベイラビリティゾーンの障害時は、RDBMSは、バックアップインスタンスに自動的にフェイルオーバーします。

.. The size you specify in the Storage field must be in the 5GB to 1TB range.
Storageフィールドで指定したサイズは5ギガバイトから1TBの範囲である必要があります。

.. After the above fields have been completed proceed to the permissions tab.
上記のフィールドが完了した後は "permissions" タブに進みます。

Screenshot 3

.. The **Admin User** and **Admin Password** fields are required.
**管理者ユーザ** と **管理者パスワード** は必須項目です。

.. **Billing Code** and **User Group** are the billing code and user group attributes that enStratus
   will use to track billing charges and access rights tied to the user management and
   billing code offerings of enStratus.
**課金コード** と **ユーザグループ** はenStratusが請求料金とアクセス権を追跡し
enStratusのユーザー管理と課金コードオファリングに関連付ける課金コードおよびユーザグループの属性です。

.. Upon save the RDBMS is launched and could take up to 15 minutes to show up in the
   enStratus console.
保存時にはRDBMSが起動され、enStratusコンソールに表示するまだに最大15分かかることがあります。

.. **Connecting to a Relational Database**
**リレーショナルデータベースに接続**

.. First you need to allow connections between your local ip and the database you want to
   connect to.
最初に接続したいローカルIPアドレスとデータベース間の接続を許可する必要があります。

.. On the Platform > Relational Databases page, select actions > network access for the
   database you want to use.
Platform > Relational Databases のページの、 actions > network access で使いたいデータベース
にアクセスします。

Screenshot 4

.. If you have created a standard network (on the Company Settings > Standard Networks page)
   for the IP you want to connect to your database from you can select your standard network
   from the Source drop-down. If you have not created a standard network you can make a new
   one on the Company Settings > Standard Networks page or you can type your CIDR in the CIDR
   field and the Source will be labeled Custom. Click the Allow Access button and you will
   have network access to the database in 5 minutes or less.
標準のネットワークを作成した（ Company Settings > Standard Networks ページで）場合、
データベースに接続するIPはソースドロップダウンリストから選択することができます。
標準のネットワークをまだ作成していない場合、 Company Settings > Standard Networks ページで
新規のネットワークを作成するか、CIDRフィールドでCIDRを入力することができます。すると
ソースには、カスタムラベルが付けられます。アクセスの[許可]ボタンをクリックすると、
5分以内にデータベースへのネットワークアクセス権を持っています。

Screenshot 5

.. Next, view the info page for your database by selecting actions > info in the relational
   databases table.
次に、リレーショナルデータベーステーブルで actions > info を選択して、データベースの情報ページを表示します。

.. You can then connect to your database using a MySQL client, the Admin User, Admin Password
   and Port you specified in the Create RDBMS form, and the DNS/Host specified in the Info
   page.
次に、RDBMS作成フォームで指定したMySQLのクライアント、管理者ユーザー、管理者パスワードおよびポートと
情報ページに指定されたDNS /ホストを使用してデータベースに接続することができます。

.. Other Actions
その他のアクション
~~~~~~~~~~~~~

.. To change the admin password for your relational database instance click on actions >
   change password in the Relational Databases table. You can't change the admin user name,
   but you can change the password by typing a new password in the Admin Password box and
   clicking the "Change RDBMS Password" button.
リレーショナルデータベースインスタンスの管理者パスワードを変更するには、リレーショナルデータベーステーブル
内の actions > change password をクリックします。管理者ユーザー名を変更することはできませんが
管理者パスワードボックスに新しいパスワードを入力して "Change RDBMS Password" ボタンをクリック
することでパスワードを変更することができます。

.. To terminate a relational database instance click on actions > terminate in the Relational
   Databases table.
リレーショナルデータベース·ンスタンスを終了するにはリレーショナルデータベーステーブルの actions > terminate をクリックします。
