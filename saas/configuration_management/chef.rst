.. Using Chef
   ==========

.. Getting Started
   ---------------

シェフの使用
============

はじめに
--------
.. Using Chef to configure instances requires the following software be installed:
インスタンスを設定するシェフを使用すると、次のソフトウェアがインストールされている必要があります。

.. 1. enStratus agent.
1. enStratus エージェント.

   .. Although Chef can be used to install the enStratus agent, in an automation enviroment
      where Chef is used to configure instances at run-time, the agent is used as a trigger
      point so that chef runs happen at the appropriate time and with the appropriate
      credentials.
   シェフは、enStratus エージェントをインストールするために使用することができますが、
   実行時にインスタンスを設定するために使用される、オートメーション環境では、トリガポイント
   として使用されます。それは、シェフの実行が適切な時期に、適切な資格情報を持って発生するためのトリガポイントです。

.. note:: .. Although the requirement for the enStratus agent seems like an unreasonable
      request at first, it actually allows for a great degree of flexibility in executing Chef
      client calls against Chef endpoints.
      enStratusエージェントの要件は不合理なようですが
   最初の要求は、実際にシェフクライアントの、シェフのエンドポイントに対する呼出しを実行する際に
   実に多大な柔軟性を可能にします。
 
.. note:: .. enStratus passes in a chef-endpoint, and the credentials for connecting to
      that endpoint at runtime to the instance via the agent. The agent dynamically writes
      the client.rb file with this information, making the image usable anywhere.
   enStratusは実行時にシェフ-エンドポイントとエンドポイントに接続するための資格情報を
   インスタンスにエージェント経由で渡します。エージェントはclient.rbファイル
   をこの情報と一緒にどこででもイメージを使用可能にして動的に書き込みます。

.. note:: 

   .. **Use Case**
   **ユースケース**

   .. enStratus engineers frequently do Chef server installations at client sites
      for POC. Often, the Chef server is a VM just like any other instance, and as such has all
      the ephemerality of instances running on a POC cloud project.
   enStratusエンジニアは頻繁にクライアントのサイトでPOCのためにシェフサーバーのインストールを行います。
   多くの場合、シェフサーバは他のインスタンスのようなVMであり、すべてのPOCクラウドのプロジェクトで
   実行されているインスタンスのはかなさ持っています。
 
 
   .. enStratus solves the problem of moving Chef server targets by abstracting that process and
      using the agent to handle the passing of necessary information to each instance.
   enStratusは、そのプロセスを抽象化することにより、シェフサーバーターゲットの移動の問題を解決し、
   各インスタンスに必要な情報の受け渡しを処理するエージェントを使用します。

   .. In summary, the standing up of Chef-enabled instances becomes trivial. Just install
      the Chef client with a templated client.rb (shown below) and let the agent kick off the
      Chef execution.
   要約すると、シェフ対応インスタンスの立ち上げは些細なことになります。テンプレートclient.rb(下図)
   を持ったシェフクライアントをインストールして、エージェントにシェフの実行をキックオフさせるだけです。

.. 2. Chef-client.
2. シェフクライアント
 
   .. The chef-client software is used to execute the Chef run.
   シェフクライアントソフトウェアがシェフの実行を実行するために使用されています。

.. Add a Configuration Management Service
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
構成管理サービスを追加
----------------------

.. Location: Configuration Management > Services
場所：Configuration Management > Services

.. Create a new configuration management service of type Chef.
タイプ シェフの新しい構成管理サービスを作成します。

.. figure:: ./images/chefService.png
   :height: 400px
   :width: 500 px
   :scale: 95 %
   :alt: Add Configuration Management Service
   :align: center

   Add Configuration Management Service

.. **Service Added**
**追加されたサービス**

.. figure:: ./images/chefService2.png
   :height: 400px
   :width: 1500 px
   :scale: 65 %
   :alt: Add Configuration Management Service
   :align: center

   Configuration Management Service Added

.. Add a Configuration Management Account
構成管理アカウントの追加
------------------------
.. Location: Configuration Management > Accounts
場所: Configuration Management > Accounts

.. figure:: ./images/chefAccount.png
   :height: 500px
   :width: 600 px
   :scale: 95 %
   :alt: Add Configuration Management Account
   :align: center

   Add Configuration Management Account 

.. **Account Added**
**追加されたアカウント**

.. figure:: ./images/chefAccount2.png
   :height: 400px
   :width: 1500 px
   :scale: 65 %
   :alt: Configuration Management Account Added
   :align: center

   Configuration Management Account Added


.. Configure an Image to use Chef
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. #. Install the enStratus Agent.
   #. Install the chef client.
   #. Edit /etc/chef/client.rb (make it a "template" that the enStratus agent will re-write)
シェフを使用するイメージを設定する
----------------------------------

#. enStratusエージェントをインストールします。
#. シェフクライアントをインストールします。
#. /etc/chef/client.rb (それをenStratusエージェントが再書き込みする "テンプレート"とする) を編集します。

.. Launch VM with Configuration Management Action
構成管理のアクションでVMを起動
------------------------------
.. To trigger a vm launch and and accompanying chef action, launch a vm and choose the
   appropriate configuration management engine. For Chef, use the text window to paste in
   json that will be passed to the chef-client call as shown.
VMの起動ととそれに付随するシェフのアクションをトリガするために、VMを起動し、適切な構成管理
エンジンを選択します。シェフのために、ここに示すように chef-client 呼び出しに json を渡すには、
テキストウィンドウを使用して貼り付けて下さい。

.. Here, we're passing in a chef role.
ここでは、シェフの役割で渡しています。

.. figure:: ./images/launchWithRole.png
   :height: 600px
   :width: 800 px
   :scale: 75 %
   :alt: Launch VM with CM Action
   :align: center

   Launch VM with Configuration Management Action

.. The process for launching a vm with a subsequent chef-client call is shown below.
その後のシェフクライアントの呼び出しを使用してVMを起動するためのプロセスを以下に示します。

.. figure:: ./images/chefLaunchProcess.png
   :height: 600px
   :width: 800 px
   :scale: 75 %
   :alt: Chef launch Process
   :align: center

   Launching a VM with a chef-client call

.. #. A launch event is triggered using the Configuration Management tab with a run list.
   #. The VM must have the chef-client pre-installed and the enStratus agent pre-installed.
   #. enStratus will pass to the VM agent script:

      * validation.pem
      * first-boot.json

.. 4. The agent script dynamically replaces the template variables in client.rb and copies the validation.pem to /etc/chef

.. 5. The agent triggers a chef-client call with the first-boot.json file as an argument

.. 6. Triggering a validation run for the client

.. 7. The client.pem file is returned and the chef run completes.

#. 起動イベントは、実行リストを持った構成管理タブを使用してトリガされます。
#. VMは、シェフクライアントとenStratusエージェントが前もってインストールされている必要があります。
#. enStratusは、VMエージェントにスクリプトを渡します：

   * validation.pem
   * first-boot.json

4. エージェントスクリプトは、動的にclient.rbでテンプレート変数を置き換えて、/etc/chef に validation.pem をコピーします。

5. エージェントは、 first-boot.json ファイルを引数としてシェフクライアントの呼び出しをトリガします。

6. クライアントの検証の実行をトリガ

7. で、client.pemファイルが返され、シェフの実行が完了します。

.. note:: .. At first, it might seem like the dynamic re-writing of the client.rb variables
     is a hindrance to smooth operations, however, it makes images very portable should the
     chef endpoint change.
  最初は、client.rb変数の動的な再書き込みが円滑な業務への支障のように見えるかもしれません
  、しかし、それはシェフのエンドポイントの変更のイメージの移植性を非常に高めているはずです。

.. Agent Script: runConfigurationManagement-CHEF
   +++++++++++++++++++++++++++++++++++++++++++++
   This file is part of an agent installation and is located in the /enstratus/bin directory.
   enStratus passes the validation.pem file along with some json used to execute the
   chef-client procedure shown below.

.. The agent script replaces the dummy variables in the client.rb and then it executes a
   chef-client call:

.. .. code-block:: bash
  
..    sudo chef-client -j $FIRST_BOOT

.. Where $FIRST_BOOT is a file with the contents specified via the enstratus console as json
   file for the chef client call. In the example below:

.. .. code-block:: json

..   {"run_list":["role[cloudFoundry]"]}

.. **Agent Script: /enstratus/bin/runConfigurationManagement-CHEF**

.. .. literalinclude:: ./files/runConfigurationManagement-CHEF
      :language: bash
      :emphasize-lines: 26,29,35
      :linenos:

.. #. Line 26: Rewrites the chef endpoint.
   #. Line 29: Rewrites the validator.
   #. Line 35: Executes the chef call.

エージェントスクリプト: runConfigurationManagement-CHEF
---------------------------------------------
このファイルは、エージェントのインストールの一部であり、 /enstratus/bin ディレクトリにあります。
enStratusは、以下に示すシェフクライアント プロシージャの実行時に使用するいくつかのJSONと一緒
にvalidation.pemファイルを渡します。

エージェントスクリプトはダミー変数を client.rb に置き換えて、シェフクライアントの呼び出しを実行します。：

.. code-block:: bash
  
   sudo chef-client -j $FIRST_BOOT

ここで $FIRST_BOOT はシェフクライアント呼び出しのためのJSONファイルとしてenstratusコンソール
を介して指定された内容を持つファイルです。以下の例では：

.. code-block:: json

  {"run_list":["role[cloudFoundry]"]}

**エージェントスクリプト: /enstratus/bin/runConfigurationManagement-CHEF**

.. literalinclude:: ./files/runConfigurationManagement-CHEF
   :language: bash
   :emphasize-lines: 26,29,35
   :linenos:

#. Line 26: シェフエンドポイントを書き換える。
#. Line 29: バリデータを書き換える。
#. Line 35: シェフコールを実行する。

client.rb
+++++++++

**Client.rb: /etc/chef/client.rb**

.. literalinclude:: ./files/client.rb
   :language: ruby
   :emphasize-lines: 8,22
   :linenos:
