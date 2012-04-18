Budget
======

enStratus financial controls allow for a useful feature for setting quotas and
limiting/tracking costs incurred in the cloud.

.. include:: budget_codes.rst
.. include:: invoices.rst
.. include:: reports.rst
.. include:: summary.rst

Summary
~~~~~~~

enStratus has the concept of billing codes, which can have soft and hard quotas. A soft
quota will alert when it has been reached, but the code is still allowed to have charges
against it. A hard quota will also alert, but when it has been reached no more
infrastructure or resources may be charged against that code.

We looked at some definitions related to billing codes as well as some examples of
alerting messages for both soft and hard quotas, We saw the functionality around how
billing codes are enforced. We covered creating and editing billing codes as well as what
happens when a billing code is deactivated. We also looked at viewing invoices.

Finally, we looked at a very granular method for obtaining information about cloud
resource usage in the form of reports. Using reports it is possible to filter and sort
usage based on billing code, resource, user, and group. Reports are a very powerful method
for learning how cloud resources are being used.
