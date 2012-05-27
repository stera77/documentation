makeTemp
~~~~~~~~

Name
++++
.. makeTemp -  Shell script to setup the enStratus temp directory
makeTemp -  enStratusが temp ディレクトリをセットアップするシェルスクリプトです

Synopsis
++++++++
makeTemp

Description
+++++++++++
.. It creates /mnt/tmp folder and gives ownership to the enstratus user and group, preventing access to other users
これは /mnt/tmp フォルダを作成し、enstratusのユーザーとグループに所有権を与えて、他のユーザーからのアクセスを防止します。

Options
+++++++

None

Examples
++++++++
.. code-block:: sh

	$ makeTemp 
	

Invocation
++++++++++

Dependencies
++++++++++++
* sudo

Permission
++++++++++

.. Run by the enstratus user. It needs sudo to create the temp folder and assign the correct ownership and permission.
enstratusユーザによって実行されます。temp フォルダを作成し、適切な所有権とアクセス許可を割り当てるには sudo の権限が必要があります。

Overrides
+++++++++

Override: No

Replace: No
