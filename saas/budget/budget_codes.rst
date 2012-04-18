Budget Codes
------------
enStratus tracks infrastructure costs based on the costs reported by the cloud provider or
in the case of an on-premise installation of enStratus, against a customizable set of
values.

enStratus calculates costs based on the hourly run rate for usage. Servers, storage, load
balancers, databases, and IP Addresses are all examples of items that have an associated
cost in many of the public clouds. The values for each of these items is used to calculate
a run rate and project costs.

.. |H| figure:: ./images/budgetCodeInitial.png
   :height: 600px
   :width: 2000 px
   :scale: 50 %
   :alt: Budget Codes
   :align: center

   Budget Codes

In diagram above, there are several billing codes in various quota states. Billing codes
are color coded for quick reference regarding the state of the billing code.

.. tabularcolumns:: |l|l|
+--------+---------------------------------------------------------------------------------+
| Color  | Meaning                                                                         |
+========+=================================================================================+
| Green  | Run rate has not exceeded and additional infrastructure/capacity may be charged |
|        | against this code.                                                              |
+--------+---------------------------------------------------------------------------------+
| Yellow | Run rate has exceeded the soft quota limit. An email warning will be sent, but  |
|        | additional infrastructure/capacity may be charged against this code.            |
+--------+---------------------------------------------------------------------------------+
| Red    | Run rate exceeded the hard quota. An email message will be sent. No additional  |
|        | infrastructure/capacity may be charged against this code.                       |
+--------+---------------------------------------------------------------------------------+

Definitions
~~~~~~~~~~~

**RUN RATE**

The run rate is the calculated usage per hour costs for all of the
infrastructure being tracked against this code.

**CURRENT USAGE**

The current usage is the total charges tracked against the billing code up
to the current point in the month. For example, if 10 days of the month have elapsed, the
current usage value should be approximately one third of the projected usage.

**PROJECTED USAGE**

The projected usage is the projected total usage costs for the month
based on the current run rate. 


Email Warning Messages
~~~~~~~~~~~~~~~~~~~~~~

An example of the email message that is sent when the soft quota is exceeded is shown
below:

Soft Quota Exceeded 
^^^^^^^^^^^^^^^^^^^^
.. code-block:: none

  New Cloud Event: Wed 01 Dec 2010 02:59:41 UTC Cloud: Amazon Web Services 
  Account: Company Subject: NEW EVENT #312218 (Severity 5) - Monthly Soft Run-Rate Exceeded
  for Company Company (YACNGH)

  The current run-rate of usage against the billing code Company Company (YACNGH) exceeds
  the alloted soft run rate for this budget.

  If you need assistance understanding this message or if you believe this message is the
  result of an issue with enStratus, please visit our support site at
  https://support.enstratus.com and login with your standard enStratus login credentials.

  To check on the status of enStratus itself, visit: http://status.enstratus.com

  Subscribe to live status updates via RSS at http://status.enstratus.com/status.xml or via
  Twitter at http://www.twitter.com/enStratusStatus.
  An example of the email message that is sent when the hard quota is exceeded is shown
  below:

Hard Quota Exceeded
^^^^^^^^^^^^^^^^^^^
.. code-block:: none

  New Cloud Event: Wed 01 Dec 2010 02:11:15 UTC Cloud: Amazon Web Services Account: Company
  Acc Subject: NEW EVENT #312214 (Severity 7) - Monthly Hard Run-Rate Exceeded for Website
  (WWW)

  The current run-rate of usage against the billing code Website (WWW) exceeds the alloted
  hard run rate for this budget. As a result, no one will be able to provision resources
  against this budget until the run-rate falls within the hard quota. You may remedy the
  situation either by increasing the hard quota for this budget or reducing the current
  spend against the budget.

  If you need assistance understanding this message or if you believe this message is the
  result of an issue with enStratus, please visit our support site at
  https://support.enstratus.com and login with your standard enStratus login credentials.

  To check on the status of enStratus itself, visit: http://status.enstratus.com

  Subscribe to live status updates via RSS at http://status.enstratus.com/status.xml or via
  Twitter at http://www.twitter.com/enStratusStatus.
  It is important to note that if the hard quota has been breached, enStratus will not take
  any drastic actions such as deleting infrastructure to bring the run rate below the quota.

Users
~~~~~

Users may be a part of one or more billing codes as shown in the user profile, located in
User Manager > Users.

.. |H| figure:: ./images/userBudgetCodes.png
   :height: 700px
   :width: 600 px
   :scale: 60 %
   :alt: User Profile
   :align: center

   User Profile

In this case, the user is a part of three budget codes: TestBudget, Default, and R&D
Budget.

Referring back to the overall budget code listing, it becomes apparent that the Default
and TestBudget budget codes have exceeded the hard quota.

To see the functionality of budget codes and how they can be used to restrict a users
ability to provision infrastructure, let's try to start a server from a machine image
and examine the budget code options presented.

.. |H| figure:: ./images/launchInstance.png
   :height: 600px
   :width: 700 px
   :scale: 60 %
   :alt: Launch Machine w/Billing Code
   :align: center

   Launch Machine w/Billing Code


enStratus hides budget codes that have exceeded their hard quota from use in the
enStratus console. If a user is only a part of one budget code *and* that code has
exceeded its hard quota, that user will be unable to provision any resources.

Creating and Editing Budget Codes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To create a budget code, navigate to Finance > Budget Codes. The list of active budget
codes will be shown as in Figure 1. To add a new budget code, select + add budget code
and complete the resulting dialog box.

.. |H| figure:: ./images/createBudgetCode.png
   :height: 400px
   :width: 600 px
   :scale: 60 %
   :alt: Add New Budget Code
   :align: center

   Add New Budget Code


Once the dialog box is complete, the new budget code will be added to the list of
available budget codes.

.. |H| figure:: ./images/newBudgetCodeAdded.png
   :height: 400px
   :width: 2000 px
   :scale: 50 %
   :alt: Budget Code Added
   :align: center

   Budget Code Added

.. note:: Before the budget code is available to be used, the user must add that code to
  their profile using User Manager.

To edit a billing code, click on the actions option and choose edit.

.. |H| figure:: ./images/editBudgetCode.png
   :height: 450px
   :width: 600 px
   :scale: 50 %
   :alt: Edit Budget Code
   :align: center

   Edit Budget Code

Once the changes are made, the list of billing codes will be updated immediately.

.. |H| figure:: ./images/quotaChanged.png
   :height: 400px
   :width: 2000 px
   :scale: 50 %
   :alt: Quota Changed
   :align: center

   Quota Changed

Deactivating Billing Codes
~~~~~~~~~~~~~~~~~~~~~~~~~~
When a billing code is deactivated, a replacement code must be specified. Any
infrastructure/services being tracked against the billing code set for deactivation will
be tracked in the replacement code going forward. Historical data will still be available
via reports in the old billing code.

To deactivate a billing code, select the code marked for deactivation, click on actions,
and choose deactivate.

.. |H| figure:: ./images/deactivateBudgetCode.png
   :height: 350px
   :width: 600 px
   :scale: 50 %
   :alt: Deactivate Budget Code
   :align: center

   Deactivate Budget Code


Once a replacement code is selected and the deactivation is confirmed, the deactivated
code is removed from the active list.

Screenshot

.. |H| figure:: ./images/budgetCodeInitial.png
   :height: 600px
   :width: 2000 px
   :scale: 50 %
   :alt: Budget Codes
   :align: center

   Budget Codes

