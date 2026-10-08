X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/2
Message-ID: <90f35f99-2f79-4796-ad88-004998e76ac0@jvf.cc>
Date: Thu, 8 Oct 2026 12:16:48 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSN-0110] Ironic can leak basic auth credentials to image server
Content-Type: text/plain; charset=utf-8

=============================================================
OSSN-0110: Ironic can leak basic auth credentials to image server 
(2026-10-08)
=============================================================
Summary
~~~~~~~
Dmitry Tantsur (Red Hat) and Tuomo Tanskanen (Ericsson Software Technology)
from the Metal3.io security team reported a vulnerability in Ironic. When
``[deploy]/image_server_auth_strategy`` option is configured for HTTP(S) 
Basic
Authentication, the operator's image server username and password are 
sent to
every host from which image data is requested. Any tenant with access to 
perform
a deployment can set ``instance_info/image_source`` or
``instance_info/image_checksum`` to a host they control, triggering this 
vulnerability.



Affected Services / Software
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- ironic ('>=24.0.0 <29.1.1, >=30.0.0 <32.1.1, >=33.0.0 <35.1.1, 
 >=36.0.0 <39.0.0')


Discussion
~~~~~~~~~~
The fix adds a ``[deploy]/image_server_auth_hosts`` option allowing
operators to restrict the hosts to which credentials are sent, along
with a ``[deploy]/image_server_auth_permit_unknown_hosts`` option.

Deployments of OpenStack-integrated Ironic typically use Glance
for image management and are not impacted by this vulnerability.



Recommended Actions
~~~~~~~~~~~~~~~~~~~
Operators utilizing the basic auth feature for image retrieval
should:

* Apply the relevant patch for their release
* set ``[deploy]/image_server_auth_hosts`` to a list of acceptable
   hosts to pass authentication credentials to
* set ``[deploy]/image_server_auth_permit_unknown_hosts`` to ``False``

Ironic intends to change the default of
``[deploy]/image_server_auth_permit_unknown_hosts`` to ``False`` in the
2027.1 release. See https://review.opendev.org/999907 for more information.

**Patches**

* **2027.1/indri**: The fix for this CVE was merged before 2027.1 was 
branched.
* **2026.2/hibiscus**: https://review.opendev.org/999744
* **2026.1/gazpacho**: https://review.opendev.org/1003587
* **2025.2/flamingo**: https://review.opendev.org/1003597
* **2025.1/epoxy**: https://review.opendev.org/1003598
* **bugfix/38.0**: https://review.opendev.org/1003577
* **bugfix/37.0**: https://review.opendev.org/1003579


**Credits:**

* Tuomo Tanskanen, Metal3.io Security Team (Ericsson Software Technology)
* Dmitry Tantsur, Metal3.io Security Team (Red Hat)


Contacts / References
~~~~~~~~~~~~~~~~~~~~~
**Author:** Jay Faulkner (G-Research OSS)



* Original bug : https://launchpad.net/bugs/2162816
* This OSSN : https://docs.openstack.org/security-notes/OSSN-0110.html
* Mailing List : openstack-discuss@...ts.openstack.org
* OpenStack Security : https://security.openstack.org/
* CVE-2026-90461 : https://nvd.nist.gov/vuln/detail/CVE-2026-90461


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
