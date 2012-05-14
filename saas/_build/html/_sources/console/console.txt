.. Console
コンソール
=======

.. Purpose
目的
-------

.. The purpose of this section is to familiarize the user with the enStratus web front end,
   referred to as the enStratus console. Upon completing this objective, the user should be
   able to identify the major components of the console, as well as feel comfortable
   navigating and accomplishing small tasks.'
このセクションの目的は、ユーザーにenStratusコンソールと呼ばれている enStratus のWebフロントエンド
に慣れてもらうことです。この目的を完了すると、ユーザーはコンソールの主要なコンポーネントを識別する
ことができるだけでなく、コンソール内を移動し、小さなタスクを達成するのが快適に感じることでしょう。

.. The enStratus console can be divided into several functional areas. In this section, we
   will cover each of the following functional areas at a high level.
enStratusコンソールはいくつかの機能領域に分けることができます。このセクションでは、我々は
高いレベルで、次の各機能分野について説明します。

.. figure:: ./images/console.png
   :height: 600px
   :width: 1000 px
   :scale: 95 %
   :alt: UI Overview
   :align: center

   .. UI Overview
   UI 概要

.. code-block:: none

  +-------+--------------------------+
  | Field | Meaning                  |
  +-------+--------------------------+
  | 1     | Customer Brand           |
  | 2     | User/Profile             |
  | 3     | Account                  |
  | 4     | Region                   |
  | 5     | Cloud                    |
  | 6     | Navigation Menu          |
  | 7     | Content Pane             |
  | 8     | Filter                   |
  | 9     | Action Menu              |
  | 10    | Staus/Alert/Support Menu |
  +----------------------------------+

.. Console Overview
コンソール　概要
----------------

.. The customer brand can be used to depict the unique logo for a custom deployment of
   enStratus.
顧客のブランドは enStratus のカスタムの配備のためのユニークなロゴマークを描くために使用することができます。

User Profile
~~~~~~~~~~~~
.. figure:: ./images/userProfile.png
   :height: 100px
   :width: 300 px
   :scale: 95 %
   :alt: User Profile
   :align: center

   User Profile

.. The name of the person currently logged in to the enStratus console. Clicking on this link
   provides functionality for editing user profile or for changing the user's password.
現在 enStratus コンソールにログイン中の人の名前。このリンクをクリックすると
ユーザープロファイルを編集したり、ユーザーのパスワードを変更するための機能が提供されます。

.. Account
アカウント
~~~~~~~
.. figure:: ./images/multipleAccounts.png
   :height: 200px
   :width: 400 px
   :scale: 45 %
   :alt: Account
   :align: center

   Account

.. enStratus can access many accounts in one cloud provider or accounts in separate clouds
   simultaneously. Clicking on the account will activate a menu for selecting an account. The
   functionality displayed within the enStratus console is shown in figure at right.
enStratusはに1つのクラウド·プロバイダーまたは別の複数のクラウドの中の多数のアカウントにアクセスできます。
同時に。アカウントをクリックすると、アカウントを選択するためのメニューがアクティブになります。
enStratusコンソール内に表示される機能は、右の図に示されています。

.. Region
リージョン
~~~~~~
.. If the underlying cloud provider has the concept of regions, those regions will be
   displayed and be selectable from here. After entering your cloud credentials, these
   regions will auto-populate as enStratus begins to discover the attributes of the cloud
   provider.
基盤となるクラウド·プロバイダーが、リージョンの概念を持っている場合、それらのリージョンが
表示され、ここから選択することができます。クラウドの資格情報を入力した後、enStratusが
クラウドプロバイダーの属性の発見を開始すると、これらのリージョンが自動的に配置されます。

.. Cloud
クラウド
~~~~~
.. Logo of the cloud provider. When navigating between different cloud providers, this logo
   will change to reflect the selected cloud.
クラウドプロバイダのロゴマーク。選択を別のクラウド·プロバイダーに変更すると、このロゴ
選択したクラウドを反映するように変更されます。

.. Navigation Menu
ナビゲーションメニュー
~~~~~~~~~~~~~~~
.. The navigation bar displays the first level of interaction with the cloud provider.
ナビゲーションバーは、クラウド·プロバイダーとの対話の最初のレベルを表示します。

.. Content Pane
コンテンツペイン
~~~~~~~~~~~~
.. The main content window for interacting with cloud resources is the content pane. The
   content displayed in this main window depend on the selections made in the Primary and
   Secondary navigation panes. For example, if Infrastructure > Servers is selected, all
   active servers will be displayed in the content pane.
クラウドリソースと対話するためのメインのコンテンツウィンドウが、コンテンツペインです。
このメインウィンドウに表示されるコンテンツは、プライマリでの選択とセカンダリナビゲーションペイン
に依存します。たとえば、 Infrastructure > Servers が選択されている場合、すべての
アクティブなサーバーが、コンテンツペインに表示されます。

.. Filter
フィルタリング
~~~~~~
.. The filter text box allows for dynamic filtering of content presented in the content pane.
フィルタのテキストボックスは、コンテンツペインに表示されたコンテンツの動的なフィルタリングが可能になります。

.. Actions Menu
アクション　メニュー
~~~~~~~~~~~~
.. figure:: ./images/serverActions.png
   :height: 200px
   :width: 300 px
   :scale: 95 %
   :alt: Actions Menu
   :align: center

   Actions Menu

.. The green action menu is a standard enStratus convention for activating a sub menu of
   options specific to a particular piece of cloud infrastructure. The sub menu, shown below,
   is activated by clicking on the actions button.
緑のアクションメニューはクラウドインフラストラクチャの特定の部分に固有のオプションサブメニューを
アクティブにするための標準的なenStratus慣習です。以下に示すようにサブメニューが
アクションボタンのクリックでアクティブになります。

.. The action button menu shown here is for a cloud server. Note: Some options shown in this
   image are only available after the enStratus agent has been installed on the virtual
   machine.
ここに示されているアクションボタンのメニューは、クラウド·サーバー用です。注：いくつかのオプションは、
この図に示すようにenStratusエージェントが仮想マシン上にインストールされた後にのみ使用できます。

.. If the cloud administrator for your account has implemented groups and roles, the action
   button may or may not be present in all cases. Presenting or hiding the green action
   button is one method enStratus uses to enforce role based access controls for cloud
   infrastructure.
クラウド管理者がアカウントのグループとロールを実装している場合、アクションボタンは
すべてのケースで存在するかもしれないし存在しないかもしれません。緑のアクションボタンを見せるか、隠すかは
enStratusがクラウドインフラストラクチャのロールベースのアクセス制御を強制するために使用する、1つのメソッドす。

.. The action button is available for many different aspects of cloud infrastructure. The sub
   menu is meant to be intuitive easy to use.
アクションボタンは、クラウドインフラストラクチャのさまざまな側面で利用可能です。サブ
メニューは直感的で容易に使えるようにということを意味します。

.. Status/Alert/Support Menu
ステータ/スアラート/サポート/メニュー
~~~~~~~~~~~~~~~~~~~~~~~~~
.. figure:: ./images/alertsSlide.png
   :height: 100px
   :width: 300 px
   :scale: 95 %
   :alt: Alerts
   :align: center

   Alerts

.. The status menu is located at the bottom of the content pane. If there are any alerts in
   any of the accounts of which you are a part, they will be displayed here. Alerts are
   categorized High, Medium, or Low. Clicking on an alert color will slide out a truncated
   list of alerts, which are accessible by clicking.
ステータスメニューは、コンテンツペインの下部に位置しています。属しているアカウントのいずれかに
何らかのアラートがある場合、ここに表示されます。アラートは、High、Medium、またはLowに分類されます。
アラートの色をクリックすると、アラートの短縮系のリストがスライドアウトします。これはクリックして
アクセス可能です。


.. Options for interacting with alerts include clicking on them to view in more detail or
   deleting them.
アラートと対話するためのオプションにはクリックすると詳細を表示するか、それを削除するかの機能が
含まれています。

.. The support link provided at the bottom of the console provides an integration point for
   external help desk functionality such as Zendesk. In the SaaS offering for enStratus,
   clicking the support link will activate a dialog window for sending a support request to
   the enStratus team.
コンソールの下部に設けられたサポートリンクはZendeskの外部ヘルプデスク機能のような統合ポイントを提供しています
enStratusのSaaSオファリングの中でサポートのリンクをクリックすると、enStratusチームへのサポートリクエストを
送信するためのダイアログウィンドウがアクティブになります。

.. figure:: ./images/supportTicket.png
   :height: 100px
   :width: 300 px
   :scale: 95 %
   :alt: Submit Ticket
   :align: center

   Submit Ticket


.. include:: alert.rst
