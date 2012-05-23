.. Distributions
配布
-------------
.. enStratus supports cloud based content distribution networks or content delivery networks
   (CDN) through enStratus Distributions. Distributions allow users to distribute content
   from cloud storage quickly and efficiently to end users in the cloud.
enStratusは、クラウドベースのコンテンツ配信ネットワークやコンテンツ配信ネットワーク（CDN）をenStratus配布を
介してサポートしています。配布では、ユーザーがコンテンツをクラウドストレージから迅速かつ
効率的にクラウド内のエンドユーザーに配布することができます。

.. enStratus currently supports Limelight Networks' CDN through the Rackspace cloud and the
   Amazon Web Services CDN CloudFront. CloudFront allow users to distribute content from
   Amazon S3 storage and Limelight Networks allows users to distribute content from Rackspace
   Cloud Files.
enStratusは現在、RackspaceのクラウドとAmazon WebサービスのCDN CloudFrontを介して
ライムライト·ネットワークスのCDNをサポートしています。CloudFrontはユーザーがAmazon S3ストレージの
コンテンツを配布でき、ライムライト·ネットワークスは、ユーザーがRackspaceのクラウド·ファイルからの
コンテンツを配布することができます。

.. To create a new distribution in enStratus click on Platform > Distributions then click
   +Create Distribution.
enStratusの新規の配布を作成するにはプラットフォームで "Platform > Distributions" をクリックし、
次に "+Create Distribution" をクリックします。

Screenshot

.. Note: to create a new distribution you must have a pre-existing directory in Platform >
   Files. Click here for more detail.
注：新規の配布を作成するには、Platformで既存のディレクトリを持っている必要が
あります。:"Platform > Files" 詳細はここをクリックしてください。

.. The Name field is where you specify a custom domain name for your distribution. (e.g.
   example.cloudfront.net)
nameフィールドで配布用のカスタムドメイン名を指定できます。（例：example.cloudfront.net）

.. The Aliases field allows you to map comma delimited aliases to the specific domain name.
エイリアスフィールドでは、特定のドメイン名にカンマで区切られた別名をマッピングすることができます。

.. The Select a directory drop-down contains a list of all root-level directories located on
   the Platform > Files page of the enStratus console. The directory that is selected for the
   distribution is mapped to the domain name you created.
Selectは、ディレクトリ ドロップダウンで、ルートレベルにあるすべてのディレクトリのリストが含まれています。
これはenStratusコンソールの Platform > Files ページに在ります。
配布のために選択されたディレクトリは、作成されたドメイン名にマップされます。

.. Clicking the actions tab next to your newly created distribution will provide you with the
   options to edit, delete, or activate/deactivate the distribution.
新しく作成した配布の横にある "actions" タブをクリックすると
編集、削除、またはアクティブ化/非アクティブ化 のオプションが提供されます。
