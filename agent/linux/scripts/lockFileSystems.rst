lockFileSystems
~~~~~~~~~~~~~~~

Name
++++
.. lockFileSystems -  Locks all mounted XFS partitions
lockFileSystems -  マウントされているすべてのXFSのパーティションをロックします

Synopsis
++++++++
lockFileSystems

Description
+++++++++++
.. It prevents access to all mounted XFS partitions using the xfs_freeze tool as a required step for creating volume snapshots.
ボリュームのスナップショットを作成するために必要なステップとして xfs_freeze ツールを使用してマウントされているすべてのXFSのパーティションへのアクセスを防止します。

Options
++++++++

None

.. Examples
例
++++++++
.. code-block:: sh

	$ lockFileSystems 
	

Invocation
++++++++++

.. It is called by volume snapshot scripts
これは、ボリュームスナップショットスクリプトによって呼び出されます。

Dependencies
++++++++++++
* sudo
* xfs_freeze

Permission
++++++++++

.. Run by the enstratus user. It needs sudo to run the xfs_freeze command
enstratusユーザによって実行されます。xfs_freeze コマンドを実行するにはsudoを必要とします。

Overrides
+++++++++

Override: No

Replace: No
