.. IP Addresses
IPアドレス
------------

.. Overview
概要
~~~~~~~~

.. *IP Addresses allow for reservation of static ip addresses which can then be assigned to running servers.*
*IPアドレス 実行中のサーバに割り当てることができる静的IPアドレスの予約を可能にします。*

.. note:: .. IP address reservation is a feature not available in all clouds. If it's not a
     feature supported by your cloud provider, enStratus will not present it in the console.
  IPアドレスの予約は全てクラウドの中で利用できるとは限らない機能です。もしそれが、クラウドプロバイダに
  よってサポートされている機能でない場合は、enStratusはコンソールにそれを提示しません。
  
.. To reserve an IP Address, click on + reserve_address in the menu window and select Reserve
   IP Address. A new IP address will be added to the list of Active Addresses.
IPアドレスを予約するには、メニューウィンドウ内の+ reserve_addressをクリックして、eserve IP Address を選択します。
新規のIPアドレスがアクティブなアドレスのリストに追加されます。

.. note:: .. In the Amazon cloud, there is a limit of 5 reserved IP addresses. To reserve
     more, you must contact Amazon Web Services.
  Amazonのクラウドでは、5個の予約済みIPアドレスの制限があります。もっと多く予約する場合は、
  Amazon Webサービスに問い合わせる必要があります。

.. Once the IP address has been reserved it is available for use by assigning it to a running
   server. To assign the IP address to a server, select the green actions button and choose
   assign. A dialog box will appear with a dropdown list of available servers. Select your
   server from the list and choose Assign address. It will take a few moments for the
   assignment to be made.
IPアドレスが予約されたならば、実行中のサーバに割り当てて使用することが可能です。
サーバーにIPアドレスを割り当てるには、緑色のアクションボタンを選択し、アサインを選択します。
使用可能なサーバーのドロップダウンリストを持つダイアログボックスがで表示されます。
リストからサーバを選択し、割り当てアドレスを選択します。
割り当てが行われるには少し時間がかかります。

.. If an addresses is already assigned to a server and is set for removal instead, click on
   the actions button and choose the release option. This action will also take a few
   moments.
アドレスがすでにサーバーに割り当てられ、代わりに除去するために設定されている場合は、アクションボタン
をクリックしてリリースオプションを選択します。このアクションはまた、いくらかの時間を要します。

.. Hint: Unused reserved IP addresses still cost money even though they are not assigned to
   running server. To delete an IP address, click on the actions button and choose delete.
   Confirm the deletion in the resulting dialog box and the IP address will be removed from
   your account.
ヒント：未使用の予約されたIPは、それらが割り当てられていないにもかかわらず、実行中のサーバには依然として
コストがかかります。IPアドレスを削除するには、アクションボタンをクリックし、[削除]を選択します。
結果表示のダイアログボックスで、削除を確認するとあなたのアカウントからIPアドレスが削除されます。
