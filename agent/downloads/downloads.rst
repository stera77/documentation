Agent Downloads
===============

Ubuntu x32/x64
~~~~~~~~~~~~~~

Tarball
^^^^^^^
`Download <http://es-download.s3.amazonaws.com/enstratus-agent-ubuntu-latest.tar.gz>`_ 934e360248b4564d7c248889b891daee Thu Apr 19 10:09:18 CDT 2012

Chef Cookbook
^^^^^^^^^^^^^
To install the agent using chef-solo, you will first need to install chef. Here's how to
do that:

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

`Download <http://es-download.s3.amazonaws.com/enstratus-agent-centos-latest.tar.gz>`_ 1613b848a9727313f65445f563798d7a Thu Apr 19 10:09:18 CDT 2012 

Windows 2003/2008 x32
~~~~~~~~~~~~~~~~~~~~~
`Download <http://es-download.s3.amazonaws.com/enstratus-agent-windows-32bit-latest.zip>`_ 3e75b61f9a20d228bef1d0effa1cb981 Thu Apr 19 10:09:18 CDT 2012 

Windows 2003/2008 x64
~~~~~~~~~~~~~~~~~~~~~
`Download <http://es-download.s3.amazonaws.com/enstratus-agent-windows-64bit-latest.zip>`_ b953ea77a30f5afc1d86b4c9339d367c Thu Apr 19 10:09:18 CDT 2012 

SmartOS
~~~~~~~
`Download <http://es-download.s3.amazonaws.com/enstratus-agent-smartos-latest.tar.gz>`_ a4db165049cc471093e77b3d190e3e29 Thu Apr 19 10:09:19 CDT 2012 

