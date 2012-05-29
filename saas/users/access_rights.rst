.. Access Rights
アクセス権
-------------

.. **The real power of the enStratus user security approach is unlocked when working with
   Roles.**
**ロールで作業するとき、enStratusユーザーセキュリティアプローチの真の力のロックが解除されます。**

.. Roles control user access to the enStratus console. Roles are assigned to Groups in a
   one-to-one relationship. Each role contains a customizable collection of access rights.
   Each access right provides access to a certain element of the enStratus console.
ロールは、enStratusコンソールへのユーザーアクセスを制御します。ロールは、一対一の関係のグループに
割り当てられています。各ロールには、カスタマイズ可能なアクセス権のコレクションが含まれています。
それぞれのアクセス権は、enStratusコンソールの特定の要素へのアクセスを提供します。

.. Terms
用語
~~~~~

.. **RESOURCE:** 
**リソース**

.. Every page, link and action in the enStratus console is controlled by at
   least one resource. In most cases, resources correspond to pages. For example, access to
   the actions available on the Machine Images page is controlled by the IMAGE resource and
   access to the actions available on the Servers page is controlled by the SERVER resource.
   Read access and account administration is controlled by the CONSOLE resource.
enStratusコンソールのすべてのページ、リンク、アクションは少なくとも1つのリソースによって制御されます。
ほとんどの場合、リソースは、ページに対応しています。例えば、マシンイメージのページで使用可能なアクション
へのアクセスはIMAGEリソースによって制御されています。サーバーページで使用可能なアクションへのアクセスは、
サーバーリソースによって制御されます。Read アクセスおよびアカウント管理はコンソールリソースによって制御されます。

.. **ACTION:** 
**アクション**

.. Resources are divided into actions. If you want access to all actions within a
   resource use the ANY action. If you want the role to have more granular permissions select
   the specific actions you want users to be able to perform. For example, if you want users
   with your role to be able to start deployments and services add the Deployment-Launch action.
   Some console actions require multiple resource-action pairs. These are documented in the
   Important Combinations sections for each resource.
リソースは、アクションに分かれています。リソースのすべてのアクションにアクセスする場合 "ANY" アクション
を使用します。より細かなアクセス許可のロールを望むならばユーザーが実行できるようにしたい特定のアクション
を選択します。たとえば、配備とサービスを開始できるロールを持ったユーザーが欲しい場合
は、"Deployment-Launch" アクションを追加します。
いくつかのコンソールアクションは、複数のリソースアクションのペアを必要とします。これらに記載されています
各リソースの重要な組み合わせのセクションを参照してください。

.. **QUALIFIER:** 
**クオリファイヤー**

.. There are five different qualifiers: ANY, GROUP, THIS GROUP, BILLING, and
   MINE. These represent ownership of resources such as servers and machine images. For exam-
   ple, when a user launches a server they can associate it with a group and a billing code.
   The server that is launched is owned by the group and billing code assigned to it and the
   user who launched it. With access rights you can limit access to the server to users who
   belong to the group you chose, the chosen billing code, or the user who launched the
   server.
ANY、GROUP、 THIS GROUP、 BILLING、および MINE の5つの異なるクオリファイヤーがあります。
これらは、サーバーやマシンイメージなどのリソースの所有権を表します。たとえば、ユーザーがサーバーを
起動したとき、それらをグループおよび課金コードに関連付けることができます。
起動されたサーバは、それに割り当てられたグループおよび課金コードとそれを起動したユーザーによって所有されています。
アクセス権を使用すると、ユーザーのサーバーへのアクセスを次の属性によって制限することができます。
選択したグループに誰が属するか、選択した課金コード、またはサーバを起動したユーザー。

.. If you want users in your role to have access to all servers you can use the ANY
   qualifier. For some resources, such as console and firewall, the group, this group,
   billing, and mine qualifiers have no meaning because there is no ownership associated with
   the resource. In these cases you should always use ANY when adding access rights.
ロール内のユーザーがすべてのサーバーへのアクセスを持ちたいのであれば、 ANY クオリファイヤーを使用します。
コンソールやファイアウォールのようないくつかのリソースにとって、GROUP、 THIS GROUP、 BILLING、および MINE の
クオリファイヤーは意味がありません。なぜならそれにはリソースに関連付けられた所有権がありません。
このケースでは、アクセス権を追加するときに常に ANY を使用する必要があります。

.. Note: Ownership of some resources are still under development.
注：いくつかのリソースの所有権はまだ開発中です。

.. Roles Example
.. ~~~
.. ~~~~~~~~~~
ロールの例
~~~~~~~~~~

.. You have three servers with the following ownership:
次の所有権を持つ3つのサーバーがあります。

.. tabularcolumns:: |l|l|l|l|
+----------+------------+--------------+---------------+
| Resource | User Group | Budget Code  | Owner         |
+==========+============+==============+===============+
| Server 1 | QA         | Default      | Johnson, Erik |
+----------+------------+--------------+---------------+
| Server 2 | Dev        | Default      | Hoffman, Jeff |
+----------+------------+--------------+---------------+
| Server 3 | Dev        | Imaging      | Moselle, Greg |
+----------+------------+--------------+---------------+

|

.. *Objective* 
*目的*

.. You are adding an access right to your QA Role, which is associated with your
   QA Group, using the resource SERVER and the action Image. This is what each qualifier will
   allow members of the QA group to do:
QAグループに関連付けられているQAロールに SERVER サーバーと Image アクションを使用してアクセス権を追加します。
これは各クオリファイヤーがQAグループのメンバーに何をすることを許可するのかを示します。

**ANY**   

.. QA users can image Server 1, Server 2, and Server 3.
QAユーザーは、Server 1、 Server 2、と Server 3 に対して Image アクションをできます。

**GROUP**   

.. QA users can image Server 1. They can image Server 2 and Server 3 if they are
   also members of the Dev group.
QAユーザーは、Server 1 に対して Image アクションをできます。彼らがDevグループのメンバーでもあれば、
Server 2、と Server 3 に対して Image アクションをできます。

**THIS_GROUP**  

.. QA users can only image Server 1.
QAユーザーは、Server 1 に対してのみ Image アクションをできます

**BILLING** 

.. QA users can image Server 1 and Server 2 if they are associated with the
   Default billing code. They can image Server 3 if they are associated with the Imaging
   billing code.
QAユーザーはデフォルトの課金コードに関連づけられていれば、Server 1、 Server 2 に対して Image アクションをできます。
彼らはイメージング課金コードに関連付けられている場合、Server 3 に対して Image アクションをできます。
。

**MINE**  

.. Erik can image Server 1, Jeff can image Server 2, and Greg can image Server 3.
エリックは Server 1 に対して、ジェフは Server 2 に対して、グレッグは Server 3 に対して Image アクションをできます。
