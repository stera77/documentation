.. Anatomy
構造の解剖
-------
.. The anatomy of a service is very free-form. This allows for great flexibility in designing
   or adapting an application for use in a multi-cloud environment.

サービスの解剖学は、非常に自由形式です。このことは設計またはアプリケーション使用の
マルチクラウド環境での適応に大きな柔軟性を提供します。

.. An enStratus service should have the following structure:
   enStratusサービスは、次のような構造をしておく必要があります。

.. bin
bin/　ディレクトリ

.. Inside the bin/ directory, minimally 3 files:
bin/　ディレクトリ内には最低限の3つのファイルがあります。：

#. enstratus-start
#. enstratus-stop
#. enstratus-configure

.. The bin/ directory provides a known path for leveraging the enstratus orchestration and
   automation sections. When a service is deployed enStratus will, using the enStratus agent,
   trigger events to configure each service in the appropriate order.
bin/　ディレクトリは、enstratusオーケストレーションと自動化のセクションを活用するための
既知のパスを提供します。
サービスが配備されると、enStratusはenStratusエージェントを使用して、
各サービスが適切な順序で設定されるようにイベントをトリガします。

cfg
~~~
.. The cfg directory is a directory where enStratus writes configuration files generated at
   run time with information the application will need to operate in the cloud. This
   directory is a good place for putting configuration file "templates".
cfgディレクトリは、enStratusが実行時に生成した構成ファイルおよびアプリケーションがクラウド内で
動作するために必要な情報を書き込むディレクトリです。
このディレクトリは、設定ファイル "templates"を置くのに良い場所です。

.. note:: .. The astute chef user/reader will recognize the word template as a very useful
          明敏な chef のユーザー/読者はtemplateが非常に有用な言葉だと認識するでしょう。

  .. construct from the Chef/Opscode world and that's precisely correct. As deployers of
     cloud applications, we use this cfg directory to stage files that will be written
     dynamically with ephemeral cloud information.
  chef/ Opscodeワールドから構築するのは正確です。クラウドアプリケーションのデプロイヤとして、
  我々は、cfgディレクトリを一時的なクラウド情報が動的に書き込まれるステージファイルとして使用します。

.. And...that's it. Questions? :)
そして...それだけです。質問は？ :)

.. The bin/ and the cfg/ directories are the two primary directories used by the enStratus
   management system. Beyond that, additional directories can be added to suit the
   application. For example, a third directory might be:
bin/ とcfg/ ディレクトリはenStratus管理システムによって使用される2つの主要なディレクトリです。
それに加えて、アプリケーションに合わせて追加のディレクトリを追加することができます
たとえば、3番目のディレクトリは次のようになります。:

app
~~~
index.html

.. Where the application directory holds the application files, in this case a lonely index.html.
アプリケーションディレクトリ、このケースでは、アプリケーション ファイルを保持している
場所は唯一 index.html です。


MySQL Service
~~~~~~~~~~~~~
.. The MySQL service structure looks like this:
MySQL サービスの構造は このようなものです。:

bin/

.. hlist::
   :columns: 3

   * addDataSource
   * enstratus-backupDataSource
   * enstratus-configureDataSource
   * enstratus-lock
   * mysql
   * mysqlStartReplication
   * configureDataSource
   * enstratus-check
   * enstratus-dbgrant
   * enstratus-start
   * mysqlDump
   * configureMySQL                
   * enstratus-configure
   * enstratus-installds
   * enstratus-stop                
   * mysqlGrant

cfg/

.. hlist::
   :columns: 1
  
   * master.cnf
   * replicant.cnf 

data/

.. hlist::
   :columns: 1
    
   * ``<empty>``

log/

.. hlist::
   :columns: 1
    
   * ``<empty>``
