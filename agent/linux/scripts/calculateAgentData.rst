calculateAgentData
~~~~~~~~~~~~~~~~~~

Name
++++
.. calculateAgentData -  Shell script called periodically to create a properties file with resource utilization
calculateAgentData -  リソースの使用率を持つプロパティファイルを作成するために定期的に呼び出されるシェルスクリプトです

Synopsis
++++++++
calculateAgentData PROPSFILE

Description
+++++++++++
.. enStratus calls this script periodically to recalculate resource usage on the server. The script prints out a file in the form:
..  property=value

.. It is expected to output the following properties:

.. * cpuCount - current number of CPU cores
   * cpuLoad - current server load
   * cpuUtilization - utilization of the server (or, alternately, cpuUser and cpuSys)
   * currentRam - amount of RAM currently in use (in MB)
   * maxRam - total RAM on the system (in MB)
   * processes - current number of processes executing on the server
   * deviceTotal.DEVICE - total disk space in GB on a device (example: deviceTotal.sdh=10)
   * deviceUsed.DEVICE - total disk space in GB in use on a device (example: deviceUsed.sdh=5
enStratusは、サーバー上のリソースの使用状況を定期的に再計算するためにこのスクリプトを呼び出します。スクリプトは、次の形式でファイルを出力します。
 プロパティ=値
 
それは、次のプロパティを出力することが期待されています。

* cpuCount - CPUコアの現在の数
* cpuLoad - 現在のサーバの負荷
* cpuUtilization - サーバー（または、交互に、cpuUserとcpuSys）の使用率
* currentRam - 現在使用中のRAMの容量（MB単位）
* maxRam - システム上のRAMの合計（MB単位）
* processes - サーバ上で実行中のプロセスの現在の数
* deviceTotal.DEVICE - デバイス上でGB単位のディスク領域の合計（例：deviceTotal.sdh= 10）
* deviceUsed.DEVICE - デバイスで使用されているGBのディスク領域の合計（例：deviceUsed.sdh= 5）



Options
++++++++

.. PROPSFILE
.. 	Output file to store the performance data. By default is /mnt/tmp/stats.properties
PROPSFILE
	パフォーマンス·データを格納する出力ファイルです。デフォルトでは /mnt/tmp/stats.properties です。

Examples
++++++++

calculateAgentData /mnt/tmp/stats.properties


Invocation
++++++++++

.. This script is called periodically by the enstratus agent and its content sent to the provisioning server.
このスクリプトはenstratusエージェントによって定期的に呼び出され、その内容は、プロビジョニングサーバーに送信されます。


Dependencies
++++++++++++

* Basic performance Unix tools:

Permission
++++++++++

.. It is launched by the enstratus user.
これはenstratusユーザーによって起動されます。


Overrides
+++++++++

Override: No

Replace: Yes
