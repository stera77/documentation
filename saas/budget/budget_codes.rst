.. Budget Codes
予算コード
------------
.. enStratus tracks infrastructure costs based on the costs reported by the cloud provider or
   in the case of an on-premise installation of enStratus, against a customizable set of
   values.
enStratusは、クラウドプロバイダよって報告されたコストまたはオンプレミスのenStratusインストールの
場合、カスタマイズ可能な値のセットに対してのコストに基づいてインフラストラクチャの
コストを追跡します。

.. enStratus calculates costs based on the hourly run rate for usage. Servers, storage, load
   balancers, databases, and IP Addresses are all examples of items that have an associated
   cost in many of the public clouds. The values for each of these items is used to calculate
   a run rate and project costs.
enStratusは、使用量の時間ごとの実行レートに基づいてコストを計算します。サーバ、ストレージ、ロード
バランサー、データベース、およびIPアドレスがパブリッククラウドの多くに於いて関連するコストを持つ
項目のすべての例です。これらの各項目の値が実行レートとプロジェクトコストの計算に使用されます。


.. |H| figure:: ./images/budgetCodeInitial.png
   :height: 600px
   :width: 2000 px
   :scale: 50 %
   :alt: Budget Codes
   :align: center

   Budget Codes

.. In diagram above, there are several billing codes in various quota states. Billing codes
   are color coded for quick reference regarding the state of the billing code.
上記の図では、いくつかの課金コードは、さまざまなクォータの状態にあります。課金コード
色は課金コードの状態に関するクイックリファレンスのためにコード化されています。

.. .. tabularcolumns:: |l|l|
   +--------+---------------------------------------------------------------------------------+
   | Color  | Meaning                                                                         |
   +========+=================================================================================+
   | Green  | Run rate has not exceeded and additional infrastructure/capacity may be charged |
   |        | against this code.                                                              |
   +--------+---------------------------------------------------------------------------------+
   | Yellow | Run rate has exceeded the soft quota limit. An email warning will be sent, but  |
   |        | additional infrastructure/capacity may be charged against this code.            |
   +--------+---------------------------------------------------------------------------------+
   | Red    | Run rate exceeded the hard quota. An email message will be sent. No additional  |
   |        | infrastructure/capacity may be charged against this code.                       |
   +--------+---------------------------------------------------------------------------------+

.. tabularcolumns:: |l|l|
+--------+---------------------------------------------------------------------------------+
|   色   |    意味                                                                         |
+========+=================================================================================+
|   緑   | 実行レートを超えておらず、追加のインフラストラクチャ/容量がこのコードに対して   |
|        | 課金される場合があります。                                                      |
+--------+---------------------------------------------------------------------------------+
|   黄   | 実行レートがソフトクォータ制限を超えました。電子メール警告が送信されますが、    |
|        | 追加のインフラストラクチャ/容量が、このコードに対して課金される場合があります。 |
+--------+---------------------------------------------------------------------------------+
|   赤   | 実行レートは、ハードクォータを超えています。電子メールメッセージが送信されます。|
|        | 追加のインフラストラクチャ/容量が、このコードに対して課金される場合があります。 |
+--------+---------------------------------------------------------------------------------+

.. Definitions
定義
~~~~~~~~~~~

.. **RUN RATE**
**実行レート**

.. The run rate is the calculated usage per hour costs for all of the
   infrastructure being tracked against this code.
実行レートはこのコードに対して追跡されている、インフラストラクチャすべての
時間当たりのコストで計算された使用料です。

.. **CURRENT USAGE**
**現在使用料**

.. The current usage is the total charges tracked against the billing code up
   to the current point in the month. For example, if 10 days of the month have elapsed, the
   current usage value should be approximately one third of the projected usage.
現在使用料は、課金コードに対して追跡された今月の現在時点までの合計料金です。
たとえば、今月の10日が経過している場合は、
現在の使用料の値は予測使用料の約3分の1でなければなりません

.. **PROJECTED USAGE**
**予測使用料**

.. The projected usage is the projected total usage costs for the month
   based on the current run rate. 
予測使用料は現在時点の実行レートに基づいた、月当たりの予測される総使用コストです。

.. Email Warning Messages
電子メール警告メッセージ
~~~~~~~~~~~~~~~~~~~~~~

.. An example of the email message that is sent when the soft quota is exceeded is shown
   below:
ソフトクォータを超過した場合に送信される電子メールメッセージの例が以下示されています。：

.. Soft Quota Exceeded 
ソフトクォータを超過
^^^^^^^^^^^^^^^^^^^^
.. code-block:: none

  New Cloud Event: Wed 01 Dec 2010 02:59:41 UTC Cloud: Amazon Web Services 
  Account: Company Subject: NEW EVENT #312218 (Severity 5) - Monthly Soft Run-Rate Exceeded
  for Company Company (YACNGH)

  The current run-rate of usage against the billing code Company Company (YACNGH) exceeds
  the alloted soft run rate for this budget.

  If you need assistance understanding this message or if you believe this message is the
  result of an issue with enStratus, please visit our support site at
  https://support.enstratus.com and login with your standard enStratus login credentials.

  To check on the status of enStratus itself, visit: http://status.enstratus.com

  Subscribe to live status updates via RSS at http://status.enstratus.com/status.xml or via
  Twitter at http://www.twitter.com/enStratusStatus.
  An example of the email message that is sent when the hard quota is exceeded is shown
  below:

.. Hard Quota Exceeded
ハードクォータを超過
^^^^^^^^^^^^^^^^^^^
.. code-block:: none

  New Cloud Event: Wed 01 Dec 2010 02:11:15 UTC Cloud: Amazon Web Services Account: Company
  Acc Subject: NEW EVENT #312214 (Severity 7) - Monthly Hard Run-Rate Exceeded for Website
  (WWW)

  The current run-rate of usage against the billing code Website (WWW) exceeds the alloted
  hard run rate for this budget. As a result, no one will be able to provision resources
  against this budget until the run-rate falls within the hard quota. You may remedy the
  situation either by increasing the hard quota for this budget or reducing the current
  spend against the budget.

  If you need assistance understanding this message or if you believe this message is the
  result of an issue with enStratus, please visit our support site at
  https://support.enstratus.com and login with your standard enStratus login credentials.

  To check on the status of enStratus itself, visit: http://status.enstratus.com

  Subscribe to live status updates via RSS at http://status.enstratus.com/status.xml or via
  Twitter at http://www.twitter.com/enStratusStatus.
  It is important to note that if the hard quota has been breached, enStratus will not take
  any drastic actions such as deleting infrastructure to bring the run rate below the quota.

.. Users
ユーザー
~~~~~

.. Users may be a part of one or more billing codes as shown in the user profile, located in
   User Manager > Users.
ユーザープロファイルに示すように、ユーザーは User Manager > Users に位置し、
1つまたは複数の課金コードの一部であるかもしれません。

.. |H| figure:: ./images/userBudgetCodes.png
   :height: 700px
   :width: 600 px
   :scale: 60 %
   :alt: User Profile
   :align: center

   User Profile

.. In this case, the user is a part of three budget codes: TestBudget, Default, and R&D
   Budget.
このケースでは、ユーザーは3つの予算コードの一部です：Test予算、デフォルト、およびR＆D予算。

.. Referring back to the overall budget code listing, it becomes apparent that the Default
   and TestBudget budget codes have exceeded the hard quota.
全体の予算コードのリストに戻って参照すると、デフォルトとTest予算コードが、ハードクォータを
超えていることが明らかになっています。

.. To see the functionality of budget codes and how they can be used to restrict a users
   ability to provision infrastructure, let's try to start a server from a machine image
   and examine the budget code options presented.
予算コードの機能を確認したり、インフラストラクチャを展開するにあたり、どのようにユーザーの
能力を制限するのに使用できるかを確認するためにマシンイメージからサーバーを起動して
提示される予算コードのオプションを確認してみましょう。

.. |H| figure:: ./images/launchInstance.png
   :height: 600px
   :width: 700 px
   :scale: 60 %
   :alt: Launch Machine w/Billing Code
   :align: center

   Launch Machine w/Billing Code


.. enStratus hides budget codes that have exceeded their hard quota from use in the
   enStratus console. If a user is only a part of one budget code *and* that code has
   exceeded its hard quota, that user will be unable to provision any resources.
enStratusはenStratusコンソールの[使用]からハードクオータを超過した予算コードを隠します。
ユーザーが、その予算コードの一部だけであり、 *且つ* そのコードがハードクォータを超過した場合、
そのユーザーはすべてのリソースを提供するすることはできません。

.. Creating and Editing Budget Codes
予算コードの作成と編集
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. To create a budget code, navigate to Finance > Budget Codes. The list of active budget
   codes will be shown as in Figure 1. To add a new budget code, select + add budget code
   and complete the resulting dialog box.
予算コードを作成するには、ファイナンス Finance > Budget Codesに移動します。
アクティブな予算のリストコードが図1のように表示されます。
新しい予算コードを追加するには、"+ add budget code" を選択して、現れる
ダイアログボックスを完了します。

.. |H| figure:: ./images/createBudgetCode.png
   :height: 400px
   :width: 600 px
   :scale: 60 %
   :alt: Add New Budget Code
   :align: center

   Add New Budget Code


.. Once the dialog box is complete, the new budget code will be added to the list of
   available budget codes.
ダイアログボックスが完了すると、新規の予算コードが利用可能な予算コードのリストに追加されます。

.. |H| figure:: ./images/newBudgetCodeAdded.png
   :height: 400px
   :width: 2000 px
   :scale: 50 %
   :alt: Budget Code Added
   :align: center

   Budget Code Added

.. note:: .. Before the budget code is available to be used, the user must add that code to
     their profile using User Manager.
  予算コードが使用可能になる前に、ユーザは、ユーザーマネージャを使用して
  プロファイルにそのコードを追加する必要があります。

.. To edit a billing code, click on the actions option and choose edit.
課金コードを編集するには、actionsオプションをクリックし、[編集]を選択します。

.. |H| figure:: ./images/editBudgetCode.png
   :height: 450px
   :width: 600 px
   :scale: 50 %
   :alt: Edit Budget Code
   :align: center

   Edit Budget Code

.. Once the changes are made, the list of billing codes will be updated immediately.
変更が行われた後、課金コードのリストはすぐに更新されます。

.. |H| figure:: ./images/quotaChanged.png
   :height: 400px
   :width: 2000 px
   :scale: 50 %
   :alt: Quota Changed
   :align: center

   Quota Changed

.. Deactivating Billing Codes
課金コードの無効化
~~~~~~~~~~~~~~~~~~~~~~~~~~
.. When a billing code is deactivated, a replacement code must be specified. Any
   infrastructure/services being tracked against the billing code set for deactivation will
   be tracked in the replacement code going forward. Historical data will still be available
   via reports in the old billing code.
課金コードが無効になっている場合は、置換コードを指定する必要があります。
任意の課金コードセットに対して追跡されている "infrastructure/services" は
無効化をすると今後の置換コードで追跡することができます。
履歴データはまだ古い課金コードのレポートを経由して利用できるようになります。

.. To deactivate a billing code, select the code marked for deactivation, click on actions,
   and choose deactivate.
課金コードを無効にするには、無効化用にマークされたコードを選択し、"actions" をクリックして
無効化を選択します。

.. |H| figure:: ./images/deactivateBudgetCode.png
   :height: 350px
   :width: 600 px
   :scale: 50 %
   :alt: Deactivate Budget Code
   :align: center

   Deactivate Budget Code


.. Once a replacement code is selected and the deactivation is confirmed, the deactivated
   code is removed from the active list.
交換用のコードが選択され、無効化が確認されれば、無効なったコードは、アクティブリストから削除されます。

Screenshot

.. |H| figure:: ./images/budgetCodeInitial.png
   :height: 600px
   :width: 2000 px
   :scale: 50 %
   :alt: Budget Codes
   :align: center

   Budget Codes

