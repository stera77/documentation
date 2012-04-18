calculateAgentData
~~~~~~~~~~~~~~~~~~

Name
++++
calculateAgentData -  Shell script called periodically to create a properties file with resource utilization

Synopsis
++++++++
calculateAgentData PROPSFILE

Description
+++++++++++
enStratus calls this script periodically to recalculate resource usage on the server. The script prints out a file in the form:
 property=value

It is expected to output the following properties:
* cpuCount - current number of CPU cores
* cpuLoad - current server load
* cpuUtilization - utilization of the server (or, alternately, cpuUser and cpuSys)
* currentRam - amount of RAM currently in use (in MB)
* maxRam - total RAM on the system (in MB)
* processes - current number of processes executing on the server
* deviceTotal.DEVICE - total disk space in GB on a device (example: deviceTotal.sdh=10)
* deviceUsed.DEVICE - total disk space in GB in use on a device (example: deviceUsed.sdh=5



Options
++++++++

PROPSFILE
	Output file to store the performance data. By default is /mnt/tmp/stats.properties

Examples
++++++++

calculateAgentData /mnt/tmp/stats.properties


Invocation
++++++++++

This script is called periodically by the enstratus agent and its content sent to the provisioning server.


Dependencies
++++++++++++

* Basic performance Unix tools:

Permission
++++++++++

It is launched by the enstratus user.


Overrides
+++++++++

Override: No

Replace: Yes
