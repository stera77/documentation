configureService
~~~~~~~~~~~~~~~~

Name
++++

.. configureService ~ Launcher for service-specific configuration script
configureService ~ サービス固有の構成スクリプトのランチャー

Synopsis
++++++++

configureService USER_ID CUSTOMER_ID SERVICE_ID [[ SSL_ADDRESS CERT_FILE_PATH KEY_FILE_PATH ] CHAIN_FILE_PATH ]

Description
+++++++++++

.. enStratus invokes the script /mnt/services/$SERVICE_ID/bin/enstratus-configure, if it exists, to run a service specific configuration script
それが存在する場合に、enStratusはサービス固有の構成スクリプトを実行するには、
スクリプト /mnt/services/$SERVICE_ID/bin/enstratus-configure を呼び出します。

Options
+++++++

.. USER_ID
.. 	User under whose authority the service configuration process will run. It can be set in the configuration of the service, otherwise enStratus will assign one.
USER_ID
	ユーザーは、サービス構成プロセスの権限下で実行されます。それはサービスの構成で設定することができ、そうでなければenStratusは1つを割り当てます。

.. CUSTOMER_ID
.. 	Customer id within enStratus. 
CUSTOMER_ID
	enStratus内の顧客IDを指定します。

.. SERVICE_ID
.. 	ID of the service to be configured. It's provided by enStratus. Service images are stored in /mnt/services/$SERVICE_ID
SERVICE_ID
	サービスIDを設定する必要があります。それはenStratusにより提供されています。サービスイメージは /mnt/services/$SERVICE_ID に格納されています。

.. SSL_ADDRESS
.. 	When using a SSL certificate, the fully qualified name associated to the certificate
SSL_ADDRESS
	SSL証明書を使用する場合は、完全修飾名は、証明書に関連付けられます。

.. CERT_FILE_PATH
.. 	When using a SSL certificate, the path to a temporary file containing the certificate file.
CERT_FILE_PATH
	SSL証明書を使用している場合、証明書ファイルを含む一時ファイルへのパス。
	
.. KEY_FILE_PATH
.. 	When using a SSL certificate, the path to a temporary file containing its private key
KEY_FILE_PATH
	SSL証明書を使用している場合、その秘密鍵を含む一時ファイルへのパス
	
.. CHAIN_FILE_PATH
.. 	Path of a file containing additional CA certificated that may be required to validate the certificate.
CHAIN_FILE_PATH
	証明書を検証するために必要になるかもしれない追加のCA認定を含むファイルのパスを指定します。
	
.. Examples
例
++++++++

configureService c100 c100 a12000


Invocation
++++++++++

.. This script is called automatically by enStratus if the service needs to be configured in that server.
サービスがそのサーバーで設定する必要がある場合は、このスクリプトはenStratusによって自動的に呼び出されます。


Dependencies
++++++++++++

* None

Permission
++++++++++

.. It is launched by the enStratus user.
これはenStratusユーザーによって起動されます。


Overrides
+++++++++

Override: No

Replace: No
