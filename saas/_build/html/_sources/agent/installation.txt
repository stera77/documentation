.. Installation
インストール
------------

.. hint:: .. The easiest way to determine what version of the enStratus agent is installed on
          an instance is to use the actions menu associated with the instance. Choose actions > info
          and select the tab labeled "Guest".
  インスタンス上にインストールされているenStratusエージェントのバージョンを確認する最も簡単な方法は、
  インスタンスに関連付けられたアクション·メニューを使用することです。 actions > info を選択して "Guest" というラベルのタブを選択します。

Debian/Ubuntu
^^^^^^^^^^^^^

.. code-block:: bash

  $ apt-get install gcc sun-java6-jdk sysstat sudo secure-delete 
  $ sudo dpkg -i enstratus-latest.deb

Chef
^^^^

.. Using Chef to install and configure a VM for using the enStratus agent is the most
   efficient and *idempotent* way of installing the enStratus agent.
シェフを使用するのがenStratusエージェントを使用するVMをインストールおよび構成する場合の
最も効率的かつenStratusエージェントをインストールするのと*冪等*な方法です。

冪等(べきとう):「その操作を何回繰り返しても，１回だけ実行した時と同じ結果になること。」


Windows
^^^^^^^

