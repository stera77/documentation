.. Users
ユーザー
=====
.. User management with enStratus is tightly integrated with enStratus accounts, groups,
   roles, and budget codes. Let's define a few terms that will help provide useful
   context for understanding how users work.
enStratusを使用してユーザー管理がenStratusアカウント、グループ、ロール、および予算コードとしっかり統合されています。
ここでユーザーがどのように働くかを理解するのに便利なコンテキストを提供するのに役立つ
いくつかの用語を定義しましょう。

.. #. Company. A company is a logical entity in enStratus that contains one or more accounts.
      When the first account is created, a company name is required.
.. #. Account. A account has a one to one relationship with a set of cloud credentials tied
      to a cloud provider.
.. #. Group. A group is visible company-wide. Users can be assigned one or more groups. Each
      group can have 0 or 1 role applied to it.
.. #. Role. A role is also visible company-wide. Roles are the mechanism through which access
      rights are managed. A role of the same name may have different access rights applied on
      the account level.
.. #. Budget Code. Budget codes are visible company-wide and costs are aggregated across all
      accounts.

#. 会社。会社は、1つまたは複数のアカウントを含むenStratus内の論理エンティティです。
   最初のアカウントが作成されたときに、会社名が必要になります。
#. アカウント。アカウントはクラウドプロバイダーと1対1の関係を関連付けられたクラウドの資格情報のセットを持ちます。
#. グループ。グループは、全社的に可視化されています。ユーザーは、1つまたは複数のグループを割り当てることができます。
   各グループはそれに適用される0または1の役割を持つことができます。
#. ロール。ロールは、全社的に可視化されています。ロールはそれを介してアクセス権を管理するメカニズムです。
   同じ名前のロールは、アカウントレベルに応じて、別のアクセス権を適用されている場合があります
   。
#. 予算コード。予算コードは、全社的に可視化されていて、費用はアカウント全体で集約されています。
   
.. figure:: ./images/companies.png
   :height: 800px
   :width: 1000 px
   :scale: 50 %
   :alt: Companies and Accounts
   :align: center

   Companies and Accounts

.. In the above example, we have two companies being managed through enStratus and tied to one
   or more cloud accounts. Let's take a closer look at each company.
上記の例では、我々はenStratusを介して管理されている2社を持っており、1個以上のクラウドアカウントと
結びつけらりれています。各企業を詳しく見てみましょう。

.. figure:: ./images/companyOne.png
   :height: 800px
   :width: 1000 px
   :scale: 50 %
   :alt: Company One
   :align: center

   Company One

.. The first company example is a simple example showing one company and one account. Here
   there are only two users, each having potentially differing levels of access to the
   underlying cloud depending on how their respective roles are configured. Group one is
   assigned role one and group two is assigned role 2.
最初の会社の例では、一つの会社と一つのアカウントを示す簡単な例です。ここでは2人だけのユーザーいて、
基本となるクラウドへの異なるアクセス権のレベルを持ちます。それは、それぞれのロールが設定されている
方法によって異なります。グループ1はロール1に、グループ2はロール2にアサインされています。

.. It is possible that role 1 and role 2 are identical and therefore each user will have the
   same capabilities, although doing so is not practical.
ロール1とロール2が同一であるため、各ユーザーが同じ機能を持つことが可能ですが、
、そうすることは実用的ではありません。

.. The other primary difference between these two users is at the level of the bugdet code.
   User 1 has only one budget code against which to charge, in this case the code called DEV.
   User 2 has access to both the DEV and PRD budget codes.
この2人のユーザーの間のその他の主な違いは、予算コードのレベルです。
ユーザー1は、課金する対象となる唯1つの予算コードを持っていて、このケースではコードはDEVと呼ばれます。
ユーザー2は、DEVおよびPRDの両方の予算コードにアクセスすることができます。

.. figure:: ./images/companyTwo.png
   :height: 800px
   :width: 1000 px
   :scale: 50 %
   :alt: Company Two
   :align: center

   Company Two

.. Company two displays a more complex account relationship with more users, groups, and
   roles. Here, there are two groups and three roles.
2つ目の会社は、より多くのユーザ、グループ、およびロールを持ち、より複雑なアカウントの関係を表示します。
ここでは、2つのグループと三つのロールがあります。

.. The first highlight to notice is that the group definitions for group 1 are different in
   each account. In account 1, group one is assigned role 1, in account 2, group one is
   assigned role 3. The practicality of such a design depends on what you're trying to
   accomplish in each account.

最初に注目すべきハイライトは、グループ1のグループ定義がアカウント毎に異なることです。
アカウント1では、グループ1はロール1が割り当てられ、アカウント2ではグループ1にロール3を割り当てられています。
このような設計の実用性は各アカウント内で達成しようとしているものに
依存しています。

.. The effect of such a group and role mapping is on User 1. If User 1 is operating in the
   first account, tied to AWS in this case, he or she will inherit the access rights from
   Role 1. If User 1 switches to the second account, tied to OpenStack, they inherit access
   rights from Role 2.
このようなグループとロールマッピングの効果は、ユーザ1にあります。ユーザー1がこのケースでは
AWSに関連付けられている最初のアカウント内で動作している場合、彼または彼女は、ロール1からアクセス権を継承します。
ユーザー1がOpenStackに関連付けられててるアカウント2へ切り替われば、ロール2からアクセス権を継承します。

.. The other interesting user in this case is User 3. This user as been assigned into two
   groups, Groups 1 and 2. When a user is assigned into two groups, the User inherits the sum
   of the access rights. So in this case, User 3 is inheriting access rights from role 3 and
   role 2, which are assigned to groups 1 and 2, respectively.
他の興味深いユーザーは、この場合はユーザー3です。このユーザーは、次の2つのグループ、グループ1および2に
割り当てられています。ユーザーが、2つのグループに割り当てられている場合、ユーザーはアクセス権の合計を継承します。
したがって、このケースでは、ユーザー3は、それぞれグループ1と2に割り当てられている、ロール3とロール2から
アクセス権を継承します。

.. Budget codes for company 2 are visible across the entire company. This means charges to
   the DEV and PRD budget codes, regardless of account, will aggregate and be shown in the
   companies budget code summary. Users can be assigned into one or many budget codes.
会社2の予算コードは、全社的に可視化されています。これは、DEVおよびPRD予算コードの費用がアカウントに
関係なく、集計されて会社の予算コードの要約で表示されることを意味します。
ユーザーは、1つまたは多くの予算コードに割り当てることができます。

.. include:: user_profile.rst
.. include:: roles.rst
.. include:: access_rights.rst
.. include:: example_roles.rst
