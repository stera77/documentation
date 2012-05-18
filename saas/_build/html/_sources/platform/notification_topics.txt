.. Notification Topics
通知トピック
-------------------

.. enStratus supports management of cloud based notification topic web services through the
   enStratus console. Notification topics are often applied to an application and can be used
   to automatically send messages to subscribers or other applications.
enStratusは、クラウドベースの通知トピックWebサービスの管理をenStratusコンソールを通じてサポートします。
通知トピックは、しばしばアプリケーションに適用され、自動的に加入者または他のアプリケーションに
メッセージを送信するのに使用することができます。

.. Overview
概要
~~~~~~~~

.. enStratus currently supports the creation and management of Amazon Simple Notification
   Service (Amazon SNS). See Amazon SNS for more information and current pricing.
enStratusは、現在 Amazon Simple Notification Service (Amazon SNS)の作成と管理をサポートしています。
詳細と現在の価格は、Amazon SNSを参照してください。

.. Notification topics makes it easy for the developer to send out important messages to
   applications or users. This allows for the developer to effectively communicate
   time-sensitive information in the form of a message.
通知トピックは、簡単に開発者が、重要なメッセージをアプリケーションまたはユーザーに送信できるようにします。
これにより開発者が効率的に時間に敏感な情報をメッセージの形で送信することができます。

.. Creating Notification Topics:
通知トピックの作成：

Screenshot

.. To create a new Notification Topic click on Platform > Notification Topics, then click on
   + add Topic.
新規の通知トピックを作成するには "Platform > Notification Topics" をクリックして、次に"+ add Topic"をクリックします。

Screenshot

.. The **Name** field is for a custom name to associate with your topic.
**名前** フィールドには、トピックに関連付けるためのカスタム名を対象とします。

.. The **Description** field can be a custom description for your topic.
**説明** フィールドには、トピックのためのカスタム記述することができます。

.. The **Label** field helps you organize your topics by providing a unique color label.
**ラベル** フィールドには、独自のカラーラベルを提供することによって、トピックを整理するのに役立ちます。

.. **Billing Code** and **User Group** are the billing code and user group attributes that enStratus
   will use to track billing charges and access rights tied to the user management and
   billing code offerings of enStratus.
**課金コード** と **ユーザグループ** はenStratusが請求料金とアクセス権を追跡し、
enStratusのユーザー管理と課金コードオファリングと
関連付けるために使用する課金コードおよびユーザグループの属性です。

.. Upon save your topic will be created and will appear shortly.
保存時にトピックが作成され、すぐに表示されます。

.. Subscribing To Notification Topics
通知トピックをサブスクライブ
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Screenshot

.. After the topic has been created you can add subscribers to the topic by clicking on
   actions > subscriptions.
トピックの作成された後、"actions > subscriptions" をクリックしてトピックに購読者を追加できます。

Screenshot

.. **End point** is where you can enter the end point as an email address, web services URL, or
   the Amazon Resource Name string on a SQS (Simple Queue Service) queue.
**エンドポイント** は電子メールアドレス、WebサービスのURL、
または SQS (Simple Queue Service) queue に Amazon Resource Name string などを
入力することができる場所です。

.. **Data Format** is currently supported in JSON and plain text formats.
**データ形式** 現在JSONやプレーンテキスト形式もサポートされています。

.. Clicking Subscribe to Topic will add the subscriber.
" Subscribe to Topic "をクリックして、購読者を追加します。

.. Publishing To Notification Topics
通知トピックへの発行
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. To publish a message to your subscribers click on actions > publish.
購読者に対してメッセージを発行するにはアクションで "actions > publish" をクリックします。

Screenshot

.. The Subject field can be any custom subject for your message.
[件名]フィールドは、メッセージの任意のカスタムテーマです。

.. The Message field will be where you provide your custom message.
メッセージフィールドはカスタムメッセージの提供場所です。

.. Deleting Notification Topics
通知トピックの削除
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. To delete a notification topic click actions > delete in the Notification Topics table.
通知トピックを削除するには通知トピックテーブルで "actions > delete" をクリックします。
