.. Cloud Files
クラウドファイル
-----------
.. enStratus supports cloud file storage via the enStratus console. File storage allows users
   to store and retrieve important data for easy and reliable access.
enStratusはenStratusコンソールを介してクラウドファイルの記憶域をサポートしています。
ファイルストレージでは、ユーザーが簡単かつ信頼性の高いアクセスで重要なデータを
格納および取得することができますことができます。

.. enStratus supports cloud file storage in Amazon Simple Storage Service (Amazon S3),
   Windows Azure Storage Services, Google Storage, Eucalyptus Walrus, AT&T Synaptic Storage,
   OpenStack Object Storage (Swift), and Rackspace Cloud Files.
enStratusは、いくつものクラウドファイルストレージをサポートしています。
AmazonのSimple Storage Service (Amazon S3)、Windows Azureストレージサービス、
Googleのストレージ、 Eucalyptus の Walrus、AT＆T の Synaptic Storage、
OpenStack の Object Storage (Swift)と、Rackspaceのクラウド·ファイルです。

.. To create a new bucket through the enStratus console click on Platform > Files, then click
   on +create root-level directory.
enStratusコンソールを介して新規バケットを作成するにはプラットフォームで Platform > Files をクリックし、
次に "+create root-level directory" をクリックしてディレクトリを作成します。

Screenshot

.. note:: .. you can create multiple root-level directories
  複数のルートレベルのディレクトリを作成することができます

.. The **Name** field is for a custom name to associate with your directory.
**Name** フィールドは、ディレクトリに関連付けるためのカスタム名です。

.. The **Label** field helps you organize your directories by providing a unique color label.
**Label** フィールドには、独自のカラーラベルを提供することにより、ディレクトリを整理するのに役立ちます。

.. **Billing Code** and **User Group** are the billing code and user group attributes that enStratus
   will use to track billing charges and access rights tied to the user management and
   billing code offerings of enStratus.
**課金コード** と **ユーザグループ** はenStratusが請求料金およびユーザー管理とenStratusのオファリングの課金コード
に関連付けられているアクセス権を追跡するために使用する課金コードとユーザグループの属性です。

.. Once the directory is created you can create a hierarchy of directories within the
   root-level directory. Clicking on the actions tab next to the root-level directory will
   bring up options for that directory. These options include:
ディレクトリが作成されたら、そのルートレベルのディレクトリ内のディレクトリの階層を作成できます。
ルートレベルのディレクトリの横にある[アクション]タブをクリックすると
そのディレクトリのオプションを起動します。これらのオプションは次のとおりです。

.. **Info**: Will provide information relating to the directory (e.g. directory name, user group,
   date created, parent directory, etc.)
**情報**: この情報は、ディレクトリに関連するが提供されます。（例えば、ディレクトリ名、ユーザーグループ、
作成日、親ディレクトリなど)

Screenshot

.. **Permissions**: You can set access level permissions to each directory.
**Permissions**: 各ディレクトリへのアクセスレベルの権限を設定することができます。

.. **Upload Files**: You can upload files to the given directory from your local machine.
**Upload Files**: ローカルマシンから指定されたディレクトリにファイルをアップロードすることができます。

.. **New Directory**: Will create a new directory within the current working directory.
**New Directory**: 現在の作業ディレクトリ内に新規のディレクトリを作成します。

.. **Delete**: Will remove the directory and it's contents.
**Delete**:ディレクトリとその内容も削除します。

.. After a file is uploaded, an action tab is placed next to the file and allows for you to
   manage the file. These options include:
ファイルがアップロードされた後、アクションタブが、ファイルの横に配置され、ファイルを管理することができます。
これらのオプションは次のとおりです。:

.. Info: Provides information about the file (e.g. creation date, last updated date, file
   size, etc.)
情報：ファイルについての情報を提供します。（例えば、作成日、最終更新日付、ファイルサイズなど）

.. Download: Will allow you to download the selected file to your local machine.
Download: ローカルマシンに選択したファイルをダウンロードすることができます。

.. Note:: .. This can take some time depending on file size and currently no progress bar has
       been implemented.
   注意：ファイルサイズに応じていくらかの時間がかかることがありますし、現在、進行状況バーが実装されてはいません。

.. Rename: Gives you the option to rename the file.
Rename: ファイルの名前を変更するオプションを提供します。

.. Delete: Permanently removes the file from the directory.
Delete: ディレクトリからファイルを永久に削除します。

