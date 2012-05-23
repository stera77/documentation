.. Managing Users
ユーザーの管理
--------------
.. The challenge of user management breaks down roughly along two boundaries. The first of
   which is enStratus console access and the second is access rights to an individual cloud
   resource such as a server.
ユーザー管理の課題は、大まかに言って2つの境界に沿って分けられます。最初の課題はenStratusコンソールへのアクセス、
2つ目はサーバのような個々のクラウドリソースへのアクセス権です。

.. The elasticity inherent in cloud computing creates a unique challenge for enterprise shell
   and remote desktop access. enStratus operates as an arbiter between your authoritative
   user database and user access to cloud virtual machines. Because of this arbitration, your
   cloud virtual machines do not need to participate in any kind of trust relationship with
   a corporate directory service.
クラウド·コンピューティングに固有の弾力性は、企業のシェルアクセスとリモートデスクトップアクセスに
固有の課題を作成します。
enStratusは、正式なユーザーデータベースとクラウド仮想マシンへのユーザーアクセスとの間の調停者として動作します。
このため、調停によって、クラウド仮想マシンは企業のディレクトリサービスとの
あらゆる種類の信頼関係に参加する必要はありません。

.. enStratus acts as this arbiter by adding individual user accounts to virtual machines
   based on the users enStratus access rights to that VM. enStratus maintains a separate set
   of login credentials for VM access so that corporate passwords are never placed in a
   public cloud.
enStratusは、仮想マシンに個々のユーザーアカウントを追加することにより、この調停者として動作します。
ユーザーはそのVMに対するenStratusアクセス権に基づいています。 enStratusはVMにアクセスするための
別のログイン資格情報セットを保持していて、企業のパスワードはパブリッククラウドに置かれることはありません。

.. Any enStratus user may be granted shell/remote desktop access to a cloud virtual machine
   if that user has shell access rights to that virtual machine. If you want to grant a user
   access to a virtual machine, they must have first created Linux (SSH) or Windows
   (password) credentials in enStratus. You can then select the virtual machine to which they
   should be granted access and then grant them access to the virtual machine. When you grant
   that access, a new user account is created on the virtual machine with that users
   authentication credentials.
ユーザーがその仮想マシンへのシェルアクセス権を持っている場合、すべてのenStratusユーザーはクラウド、
仮想マシンにシェル/リモートデスクトップアクセスを付与されます。
ユーザーに仮想マシンへのアクセス権を付与したい場合、最初にLinuxでは SSH の、Windowsではパスワードの資格情報を
enStratusで作成しておく必要があります。次に、ユーザーがアクセス権を付与され、アクセスを許可されるべき
仮想マシンを選択します。ユーザーにアクセスを許可すれば、新規のユーザーアカウントが
そのユーザーの認証資格情報で仮想マシン上で作成されます。

.. If you remove the user from enStratus, enStratus also removes all virtual machine access
   as well.
enStratusからユーザーを削除すれば、同様にenStratusはまた、すべての仮想マシンへのアクセスを削除します。

.. To create a new user, navigate to User Manager > Users. Click on the + add user link in
   the upper right of the User List and complete the resulting dialog box. After providing
   the required information the user will be added to the user list.
新規のユーザーを作成するには、 User Manager > Users に移動します。
上部のユーザーリストの右側の "+ add user link" をクリックして、現れたダイアログボックスを完了します。
必要な情報を入力後ユーザーがユーザーリストに追加されます。

.. figure:: ./images/newUserDialog.png
   :height: 800px
   :width: 1000 px
   :scale: 50 %
   :alt: New User
   :align: center

   New User

.. Once the user is added to the system, they will inherit the rights associated with the
   group(s) to which they have been added.
ユーザがシステムに追加されると、追加されたグループに関連付けられている権限を継承します。

.. A user must specify remote access credentials prior to gaining access to individual
   running servers in the cloud. To gain access to a running Windows server, the user must
   specify an RDP password. To access a Linux server, a user must specify a public SSH key.
ユーザーは個々のクラウド内の実行中のサーバにアクセスする前に、リモートアクセス資格情報を指定する必要があります。
実行中のWindowsサーバにアクセスするには、ユーザーはRDPパスワードを指定する必要があります。
Linuxサーバにアクセスするには、ユーザーはパブリックSSHキーを指定する必要があります。

.. To associate these credentials, click on their name at the top of the console, and select
   Edit my profile. On the profile page, the RDP password should be entered twice before
   saving the changes to the profile. The SSH public key can be entered either as a string or
   uploaded as a file.
これらの資格情報を関連付けるには、コンソールの上部の自分の名前をクリックして、"Edit my profile" を選択します。
プロフィールページで、RDPパスワードはプロファイルへの変更を保存する前に二度入力する必要があります。
SSHのパブリックキーは、文字列としてするかまたはアップロードされたファイルとして入力することができます。

.. figure:: ./images/clickedUserName.png
   :height: 300px
   :width: 1000 px
   :scale: 50 %
   :alt: Edit Profile
   :align: center

   Edit Profile

.. Once the credentials have been entered and the profile is saved, the user can then access
   remote servers as outlined in the Infrastructure > Servers section through Shell/Remote
   access provided they have the appropriate access rights to take this action.
資格情報が入力されて、プロファイルが保存されると、ユーザーはリモートサーバにアクセスできます。
ユーザーは "Infrastructure > Servers section" セクションで概説されているように "Shell/Remote access" 経由で
適切なアクセス権を持ってアクセスできます。

.. figure:: ./images/userProfileGeneral.png
   :height: 600px
   :width: 1300 px
   :scale: 50 %
   :alt: General Profile Information
   :align: center

   General Profile Information

|

.. figure:: ./images/userProfileCredentials.png
   :height: 600px
   :width: 1300 px
   :scale: 50 %
   :alt: Profile Security Credentials
   :align: center

   Profile Security Credentials


