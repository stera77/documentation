.. Machine Images
マシンイメージ
--------------

.. Overview
概要
~~~~~~~~

.. A machine image is a saved template of a server. Running servers are started from machine images.
マシンのイメージは、サーバの保存されたテンプレートです。実行しているサーバーは、マシンのイメージから起動されます。

.. If you are going to be utilizing enStratus images to begin your cloud work, please follow this workflow:
enStratusイメージを利用してクラウドの作業を開始するしようとしている場合は、このワークフローに従ってください。

.. 1. Start a server from one of the provided enStratus templates (machine images). 
   2. Next, create a machine image from the server you have started.

   3. Use the resulting image in your work, not the provided enStratus image.
1. 提供されたenStratusテンプレート（マシンイメージ）のいずれかからサーバーを起動します。
2. 次に、開始したサーバからマシンイメージを作成します。

3. 提供されたenStratusイメージではなく、仕事で得られたイメージを使用します。

.. *Why?*
*なぜ*？

.. We update the available enStratus images periodically, and when we do, we delete the old
   images to be good stewards of cloud resources. If the backing image of a running server is
   deleted, it can lead to imaging problems going forward. It will not affect the running
   server.
我々は定期的に使用可能なenStratusイメージを更新し、それを行うとき、我々はクラウドリソースの良い
スチュワードで有るべく、古いものを削除します。実行中のサーバのバッキングイメージが削除された場合、
それは今後のイメージングの問題につながる可能性があります。それは実行中のサーバには影響しません。

.. The functionality included with machine images varies depending on the underlying cloud
   provider. Some cloud providers allow access to a public database of images from which
   private servers can be started. enStratus allows searching and starting of any publicly
   available machine images.
マシンイメージに含まれる機能は、基盤となるクラウドプロバイダーにより異なります。
いくつかのクラウドプロバイダーは、イメージの公開データベースへのアクセスが許可していますから
それからプライベートサーバを開始することができます。enStratusはマシンイメージを公開しているので
検索し、任意の使用可能なマシンイメージを開始できます。

.. Renaming
名前の変更
~~~~~~~~
.. To rename a machine image, click on the image name indicated by a brown dashed line. A
   text window will appear. Enter the desired name and select OK.
マシンイメージの名前を変更するには、茶色の点線で示されたイメージ名をクリックします。
テキストウィンドウが表示されます。希望する名前を入力し、[OK]を選択します。

.. To change the label color of a machine image, click on the label color and choose the
   desired color from the resulting choices.
マシンイメージのラベルの色を変更するには、ラベルの色をクリックして選択して
得られた選択肢の中から色を希望します。

.. Starting
出発
~~~~~~~~
.. To start a server from a machine image, click on the green action button and select
   launch. A dialog box will appear allowing for customization of launch options.
マシンイメージからサーバーを起動するには、緑色のアクションボタンをクリックして起動を選択します。
ダイアログボックスには、カスタマイズ可能な起動オプションが表示されます。

.. Some of the launch parameters are governed by the functionality provided for by the
   underlying cloud provider. Most cloud providers allow for customization of the amount of
   hardware (CPU, Memory, storage) provisioned for the server.
いくつかの起動パラメータが基盤となるクラウドプロバイダーから提供される機能によって管理されています。
ほとんどのクラウドプロバイダーは、サーバにプロビジョニングされるハードウェア（CPU、メモリ、ストレージ）
の量のカスタマイズを可能にしています。

.. Security Group
セキュリティグループ
~~~~~~~~~~~~~~
.. Security parameters in the form of firewall or security group are also chosen at the time
   of server launch.
ファイアウォール形式のセキュリティパラメータまたはセキュリティグループも同じくサーバ起動時に選択されます。

.. enStratus layers additional functionality in the form of groups and billing codes into
   server launch for all cloud providers.
enStratusはグループ化および課金コードの形で追加機能をすべてのクラウドプロバイダーのサーバーの起動に置きます。

.. Key Pair
キーペア
~~~~~~~~
.. Some cloud providers allow servers to be started with a root keypair. enStratus provides
   for this functionality by allowing the user to choose from a set of existing keypairs or
   to create a new keypair at launch.
いくつかのクラウドプロバイダーでは、サーバーがルートキーペアを持って開始することができます。enStratusでも
このような機能を提供でき、ユーザーが既存のキーペアセットから選択することや、起動時に新規キーペアを作成することができます。

.. Volumes
   ~~~~~~~
ボリューム
~~~~~~~
.. Additionally, through some cloud providers it is possible to specify a volume group to be
   attached, formatted, put into a RAID configuration, and optionally encrypted at launch
   time.
さらに、いくつかのクラウドプロバイダーを介してボリュームグループを接続するように指定し、
フォーマット、RAID構成に入れる、オプションで起動時に暗号化することが可能です。

.. Once the server is launched, it will usually take less than 20 minutes for the server to
   be ready for use.
サーバが起動すれば、通常20分未満でサーバーの使用準備ができます。

.. To do:
   ~~~~~
.. #. Launch process
   #. Screenshots
やること:
~~~~~
#. 起動プロセス
#. スクリーンショット

