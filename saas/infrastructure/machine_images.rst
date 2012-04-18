Machine Images
--------------

Overview
~~~~~~~~

A machine image is a saved template of a server. Running servers are started from machine images.

If you are going to be utilizing enStratus images to begin your cloud work, please follow this workflow:

1. Start a server from one of the provided enStratus templates (machine images). 
2. Next, create a machine image from the server you have started.

3. Use the resulting image in your work, not the provided enStratus image.

*Why?*

We update the available enStratus images periodically, and when we do, we delete the old
images to be good stewards of cloud resources. If the backing image of a running server is
deleted, it can lead to imaging problems going forward. It will not affect the running
server.

The functionality included with machine images varies depending on the underlying cloud
provider. Some cloud providers allow access to a public database of images from which
private servers can be started. enStratus allows searching and starting of any publicly
available machine images.

Renaming
~~~~~~~~
To rename a machine image, click on the image name indicated by a brown dashed line. A
text window will appear. Enter the desired name and select OK.

To change the label color of a machine image, click on the label color and choose the
desired color from the resulting choices.

Starting
~~~~~~~~
To start a server from a machine image, click on the green action button and select
launch. A dialog box will appear allowing for customization of launch options.

Some of the launch parameters are governed by the functionality provided for by the
underlying cloud provider. Most cloud providers allow for customization of the amount of
hardware (CPU, Memory, storage) provisioned for the server.

Security Group
~~~~~~~~~~~~~~
Security parameters in the form of firewall or security group are also chosen at the time
of server launch.

enStratus layers additional functionality in the form of groups and billing codes into
server launch for all cloud providers.

Key Pair
~~~~~~~~
Some cloud providers allow servers to be started with a root keypair. enStratus provides
for this functionality by allowing the user to choose from a set of existing keypairs or
to create a new keypair at launch.

Volumes
~~~~~~~
Additionally, through some cloud providers it is possible to specify a volume group to be
attached, formatted, put into a RAID configuration, and optionally encrypted at launch
time.

Once the server is launched, it will usually take less than 20 minutes for the server to
be ready for use.

To do:
#. Launch process
#. Screenshots
