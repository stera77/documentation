enstratus-service
~~~~~~~~~~~~~~~~~

Name
++++

.. enstratus-service ~ Manages the enStratus agent daemon
enstratus-service ~ enStratus エージェントデーモンを管理します

Synopsis
++++++++

enstratus-service ACTION

Description
+++++++++++

.. It starts or stops the enStratus agent.
enStratusエージェントを開始または停止します。

Options
+++++++

ACTION
	start for starting the enStratus agent
	stop for stopping the enStratus agent
	
.. Examples
例
++++++++

.. code-block:: sh

	$ /enstratus/bin/enstratus-service stop
	Using CATALINA_BASE:   /enstratus/ws/tomcat
	Using CATALINA_HOME:   /enstratus/ws/tomcat
	Using CATALINA_TMPDIR: /enstratus/ws/tomcat/temp
	Using JRE_HOME:       /usr/java/jdk
	$ /enstratus/bin/enstratus-service start
	Using CATALINA_BASE:   /enstratus/ws/tomcat
	Using CATALINA_HOME:   /enstratus/ws/tomcat
	Using CATALINA_TMPDIR: /enstratus/ws/tomcat/temp
	Using JRE_HOME:       /usr/java/jdk


Invocation
++++++++++

.. This script is called by /etc/init.d/tomcat-enstratus on server boot to start the enStratus agent. It can also be run manually to start/stop the agent.
このスクリプトはサーバーの起動時に、enStratusエージェントを起動するために、 /etc/init.d/tomcat-enstratus によって呼び出されます。また、手動でエージェントを停止/開始するのに実行することができます。

Dependencies
++++++++++++

* enStratus agent requires JDK

Permission
++++++++++

.. It is launched by the enStratus user.
これはenStratusユーザーによって起動されます。

Overrides
+++++++++

Override: No

Replace: No
