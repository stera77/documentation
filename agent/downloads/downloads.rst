Agent Downloads (Version 16)
============================

Ubuntu x32/x64
~~~~~~~~~~~~~~

Tarball
^^^^^^^
`Ubuntu x32/x64 <http://es-download.s3.amazonaws.com/enstratus-agent-ubuntu-latest.tar.gz>`_ 141a5c1d60347bf5f897c70ceee2101a Thu Apr 19 12:08:46 CDT 2012

Chef Cookbook
^^^^^^^^^^^^^
To install the agent using chef-solo, you will first need to install chef. Here's how to
do that:

.. warning:: The chef-cookbook is only set to run with the EC2 cloud in the enStratus
  production (SaaS) environment. More clouds will be added ASAP.

.. code-block:: bash

  echo "deb http://apt.opscode.com/ `lsb_release -cs`-0.10 main" | sudo tee /etc/apt/sources.list.d/opscode.list
  sudo mkdir -p /etc/apt/trusted.gpg.d
  gpg --keyserver keys.gnupg.net --recv-keys 83EF826A
  gpg --export packages@opscode.com | sudo tee /etc/apt/trusted.gpg.d/opscode-keyring.gpg > /dev/null
  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get -y install chef

.deb Package
^^^^^^^^^^^^

Coming soon...

CentOS/RedHat x32/x64
~~~~~~~~~~~~~~~~~~~~~
`CentOS/Redhat x32/x64 <http://es-download.s3.amazonaws.com/enstratus-agent-centos-latest.tar.gz>`_ 4a373bd98a3f973f21ce79ad03fca8a5 Thu Apr 19 12:08:46 CDT 2012


Windows 2003/2008 x32
~~~~~~~~~~~~~~~~~~~~~
`Windows 2003/2008x32 <http://es-download.s3.amazonaws.com/enstratus-agent-windows-32bit-latest.zip>`_ 7547e41987dda84033b860ea38e37ebc Thu Apr 19 12:08:46 CDT 2012

Windows 2003/2008 x64
~~~~~~~~~~~~~~~~~~~~~
`Windows 2003/2008x64 <http://es-download.s3.amazonaws.com/enstratus-agent-windows-64bit-latest.zip>`_ a3258978a220b13e6d4c65d7daa0a998 Thu Apr 19 12:08:47 CDT 2012

SmartOS
~~~~~~~
`SmartOS x32/X64 <http://es-download.s3.amazonaws.com/enstratus-agent-smartos-latest.tar.gz>`_ 178ba5b506d76bbe2a5e3a2408275903 Thu Apr 19 12:08:46 CDT 2012

Debian
~~~~~~
`Debian x32/x64 <http://es-download.s3.amazonaws.com/enstratus-agent-debian-latest.tar.gz>`_ 43ea649f3848867ac06f400e370f1472 Thu Apr 19 12:08:46 CDT 2012

Fedora
~~~~~~
`Fedora x32/x64 <http://es-download.s3.amazonaws.com/enstratus-agent-fedora-latest.tar.gz>`_ 8ee583c1f5a2c56b26da30ad6482694c Thu Apr 19 12:08:46 CDT 2012
