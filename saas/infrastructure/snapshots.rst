.. Snapshots
スナップショット
---------
.. Snapshots are the reciprocal of volumes. When a snapshot of a volume is created, a
   differential backup of the devices is created and stored in S3. From this snapshot, a
   clone of the original volume can be created. enStratus leverages this property of
   snapshots when automating application deployments. At the time of this writing, snapshot
   creation is only supported by the Amazon EC2 cloud.
スナップショットはボリュームの相反です。ボリュームのスナップショットが作成されたときに、
デバイスの差分バックアップが作成され、S3に格納されます。このスナップショットから、
元のボリュームのクローンを作成することができます。 enStratusは、スナップショットのプロパティを
アプリケーション配備の自動化に利用しています。これを書いている時点でスナップショットの作成は、
Amazon EC2クラウドでのみサポートされています。

.. Creating Volumes from Snapshots
スナップショットからのボリュームの作成
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Creating volumes from snapshots is a way to create an exact duplicate of the volume from
   which the snapshot came. If the filesystem on the volume supports increasing the size of
   the volume, the volume created from the snapshot may be increased in size.
スナップショットからボリュームを作成することは、スナップショットが来たボリュームの正確な複製を
作成する方法です。ボリューム上のファイルシステムがボリュームのサイズを大きくすることがサポート
されている場合、スナップショットから作成されたボリュームのサイズを増加することができます。

.. The volume created from the snapshot must be at least the size of the original volume.
スナップショットから作成されたボリュームは、元のボリュームのサイズ以上でなければなりません。

.. To create a volume from a snapshot, navigate to Infrastructure > Snaphots and select a
   snapshot. Click on the appropriate actions button and choose create_volume. The resulting
   dialog box allows for the customization of several options, including standard enStratus
   options of name, group, and billing code.
スナップショットからボリュームを作成するには、 Infrastructure > Snaphots に移動してスナップショットを
選択します。適切なアクションボタンをクリックし create_volume を選択します。現れたダイアログボックスでは
標準enStratusオプションの名前、グループ、および課金コードを含む、いくつかのオプションをカスタマイズする
ことができます。


.. The size field will automatically be populated with the size of the original volume, but
   can be increased. For Amazon, volumes are specific to an availability zone, so a zone is
   required for volume creation.
sizeフィールドは自動的に元のボリュームのサイズが割り当てられますが、増加することができます。
アマゾンでは、ボリュームはアベイラビリティゾーンに固有であり、それでゾーンはボリュームの作成に必要です。

.. figure:: ./images/createVolumeFromSnapshot.png
   :height: 300px
   :width: 500 px
   :scale: 95 %
   :alt: Create Volume from Snapshot
   :align: center

   Create Volume from Snapshot

.. The created volume will soon appear in the Infrastructure > Volumes page for selection and
   attachment to servers.
作成されたボリュームは、すぐに Infrastructure > Volumes page で選択とサーバーへの接続のために表示されます。

.. Sharing Snapshots
共有スナップショット
~~~~~~~~~~~~~~~~~
.. Sometimes it is advantageous to share snapshots to another account for ease of data
   transfer. Sharing snapshots in enStratus is accomplished by selecting the snapshot to
   share and clicking on the action button choosing sharing.
時には別のアカウントと、スナップショットを共有することはデータ転送を容易にするために有利です。
enStratusで共有スナップショットは、"snapshot to share" を選択してアクションボタンをクリックする
ことによって達成されます。

.. A dialog box with two primary options is presented. The first share type is Private.
   Private sharing enables an enStratus user who is a part of several accounts to share
   snapshots between those accounts. The accounts of which the user is a part will populate a
   dropdown window. Once the snapshot is shared, the snapshot will appear in the other
   account.
2つの主要オプションを持ったダイアログボックスが表示されます。最初の共有タイプはPrivateです。
プライベート共有は、複数のアカウントの一部であるenStratusユーザーがこれらのアカウントの間で
スナップショットを共有することを可能にします。ユーザーが属しているグループのアカウントにはドロップダウンウィンドウが
置かれます。スナップショットが共有されると、スナップショットは、他のアカウントにも表示されます。

.. The second share type is Public. Public sharing enables an enStratus user to add a
   snapshot to the publicly available pool of snapshots. This is an option that carries the
   risk of making publicly available private data, so this action should be restricted using
   enStratus groups and roles.
２番目の共有タイプは、Publicです。パブリックの共有はenStratusユーザーがスナップショットを
パブリックに利用可能なスナップショットのプールに追加することを可能にします。これは公的に利用可能な
プライベートデータを作るリスクを運ぶオプションですので、このアクションをenStratusのグループと
ロールに使用するのは制限すべきです。

.. Snapshot Strategies
スナップショットの戦略
~~~~~~~~~~~~~~~~~~~
.. Because snapshots are differential backups, the time snapshots take to create varies based
   on the amount of changed information since the last snapshot was taken. Frequent snapshots
   will generally be created more quickly than infrequent ones.
スナップショットは差分バックアップであるため、スナップショット作成にかかる時間は最後のスナップショットが
取られて以来変更された情報の量に基づいて異なります。頻繁なスナップショットは一般的に、
まれなものよりもより迅速に作成されます。

.. In an automated environment with enStratus, it is possible to have enStratus automate both
   the creation of snapshots and recovery volumes according to a customizable schedule.
enStratusで自動化された環境では、enStratusがカスタマイズ可能なスケジュールに従っての、スナップショット作成
および復元ボリューム作成の両方を自動化することは可能です。
。
