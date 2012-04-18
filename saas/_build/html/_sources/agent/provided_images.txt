Provided Images
---------------
The enStratus team provides some machine images that are pre-installed with the enStratus
agent. These images are configured for use up to and including functioning as a member of
an automated enStratus deployment. To that end, several changes have been made to the
images which will be covered here.

By default, enStratus images come with the OSSEC host-based intrusion detection system.
OSSEC alerting is integrated into the enStratus alerting system, so you will receive
alerts based on events triggered by OSSEC both in the enStratus console, and depending on
your alerts settings, via email. OSSEC is available only on the GNU/Linux platform.

enStratus images have installed some software packages to prepare servers started from
that image for utilization in a wide range of purposes. The list of packages installed on
enStratus images includes:

.. hlist::
   :columns: 3
  
   * zip
   * unzip
   * build-essential
   * python-mysqldb
   * xfsprogs
   * libapache2-mod-jk
   * cryptsetup
   * python-json
   * tomcat6
   * postfix
   * mysql-server
   * mdadm
   * sysstat
   * ha-proxy
   * secure-delete
   * apache2
   * cronolog

Not all of these packages are strictly necessary for using enStratus successfully.
Examples of packages that are not required but are installed are cryptsetup, apache, and
mysql. If, for example, cryptsetup is not installed, automated encryption of volumes will
not be possible.

All of the software used by enStratus should be readily available in the distribution
repositories.

Some init scripts that would normally be in place are also moved to prepare the image for
use in an automated enStratus deployment. For example, the mysql init script
/etc/init.d/mysql is removed to prepare the image for use in conjunction with the mysql
service image where enStratus handles the configuration, installation of the database,
permissioning, and starting of the mysql service on an attached volume. More information
on how service images work in a deployment can be found in the documentation on
automation

All enStratus images also disable SSH access via password authentication. SSH access is
available only via a public key authentication using the public key located in the user
profile. SSH access as root user is also disabled. The root password is unknown.

