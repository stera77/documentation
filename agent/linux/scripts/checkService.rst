checkService
~~~~~~~~~~~~

Name
+++++
.. checkService - This script is used to determine the "health" of a service
checkService - このスクリプトは、サービスの"健康"を決定するために使用されます

Synopsis
++++++++

checkService SERVICE_ID

Description
+++++++++++
.. This script is used to determine the "health" of a service. It is meant to be user-extensible. The way to use this script is to write a script called
   enstratus-check and put it in the /bin directory of your service image.
   The enStratus provisioning server will call this script during the launch of the service. If the script returns a code of "OK", the service will be
   marked as running. If not, it will be marked as impaired.
このスクリプトは、サービスの "健康"を決定するために使用されます。それは、ユーザが拡張可能であることを意味します。このスクリプトを使用する方法は "enstratus-check" と呼ばれるスクリプトを記述することで
、サービスイメージの /bin ディレクトリに置きます。
enStratusプロビジョニングサーバーは、サービスの起動時にこのスクリプトを呼び出します。スクリプトは、"OK"のコードを返した場合、サービスが実行しているとしてマークされます。でなければ障害者として、それはマークされます。

Options
+++++++

.. SERVICE_ID
.. 	ID of the service to be checked. It's provided by enstratus. Service images are stored in /mnt/services/$SERVICE_ID
SERVICE_ID
	サービスIDをチェックすることができます。それはenstratusにより提供されています。サービスイメージは /mnt/services/$SERVICE_ID に格納されています


.. Examples
例
++++++++

checkService a123


Invocation
++++++++++

.. This script is called automatically by enstratus during the launch of the service
このスクリプトは、サービスの起動時にenstratusによって自動的に呼び出されます

Dependencies
++++++++++++

* None

Permission
++++++++++

.. It is launched by the enstratus user.
これはenstratusユーザーによって起動されます。

Overrides
+++++++++

Override: No

Replace: Yes
