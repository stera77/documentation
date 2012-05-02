.. Additional Information
追加情報
----------------------

.. Updating
アップデート
^^^^^^^^

.. Updating the agent on a Ubuntu/Debian server can be accomplished by using the .deb
   package. The installation routine will detect previously installed versions and do a
   backup, preserving any customizations by preserving the contents of the
   /enstratus/custom/bin directory.
Ubuntuの/ Debianサーバ上のエージェントの更新は .debパッケージを使用することによって
達成することができます
インストールルーチンは、以前にインストールしたバージョンを検出して、 /enstratus/custom/bin ディレクトリ
にあるコンテンツを保持することで
任意のカスタマイズを保持しながらバックアップをおこないます。

.. Extending the Agent
エージェントの拡張
^^^^^^^^^^^^^^^^^^^

.. Agent scripts are designed to be extended and customized. The scripts located in
   /enstratus/bin are not designed to be edited directly as these scripts are overwritten
   during an upgrade. Instead, use the /enstratus/custom/bin directory to run custom scripts
   before, in place of, and/or after the provided scripts.
エージェント·スクリプトは、拡張およびカスタマイズできるように設計されています。 /enstratus/bin にある
スクリプトはアップグレード中に上書きされるので、直接編集できるように設計されていません。
代わりに、 /enstratus/custom/bin ディレクトリ
を使用して [事前に、代わりに、および/または提供されているスクリプトの後に] カスタムスクリプト
を実行します。

.. To run a script before the default enStratus script, place a script called $scriptName-pre
   in the /enstratus/custom/bin directory. To run a script in place of the default enStratus
   script, place a script of the same name in the /enstratus/custom/bin directory. To run a
   script after the default enStratus script, place a script called $scriptName-post in the
   /enstratus/custom/bin directory.
デフォルトの enStratus スクリプトの前にスクリプトを実行するには、 $scriptName-pre と呼ばれる
スクリプトを /enstratus/custom/bin ディレクトリに置きます。
デフォルト enStratus スクリプトの代わりにスクリプトを実行するには
同じ名前のスクリプトを、 /enstratus/custom/bin ディレクトリに配置します。
デフォルト enStratus スクリプトの後にスクリプトを実行するには、 $scriptName-post 呼ばれる
スクリプトを /enstratus/custom/bin ディレクトリに置きます。

.. For example to modify the /enstratus/bin/addUser script do the following:
たとえば、 /enstratus/bin/addUser スクリプトを修正するには、次の操作を行います。


.. /enstratus/custom/bin/addUser - if exists, will completely replace this script 
/enstratus/custom/bin/addUser  - 存在する場合、完全にこのスクリプトを置き換えます

.. /enstratus/custom/bin/addUser-pre - if exists, will be executed before this script
/enstratus/custom/bin/addUser-pre  - 存在する場合は、このスクリプトの前に実行されます。 

.. /enstratus/custom/bin/addUser-post - if exists, will be executed after this script
/enstratus/custom/bin/addUser-post  - 存在する場合は、このスクリプトの後に実行されます。


.. Starting from Scratch
ゼロから始める
^^^^^^^^^^^^^^^^^^^^^

.. At enStratus we use the EC2 images supplied by Alestic www.alestic.com with success. The
   .deb installer has been tested with the latest releases of Ubuntu (10.04) and Debian
   (5.0).
enStratusでAlestic www.alestic.comによって供給されたEC2イメージを使用して我々は成功を収めています。
Ubuntu（10.04）とDebian(5.0)の最新リリースで .deb ファイルのインストーラはテストされています。

.. The installation process should work on most flavors of Ubuntu and Debian, if you have
   trouble installing on your own, please contact support at enStratus.
このインストールプロセスは Ubuntu と Debian の殆どの場合で動作するはずです。
インストール上ののトラブルについては enStratus のサポートに連絡してください。
