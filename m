X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/3
Message-ID: <4a8403ac-1b1b-4ca3-8a04-649e37f57084@jvf.cc>
Date: Wed, 8 Jul 2026 07:48:28 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-025] Ironic: RBAC Bypass in IPMI Raw Command Execution (CVE-2026-54423)
Content-Type: text/plain; charset=utf-8

========================================================
OSSA-2026-025: RBAC Bypass in IPMI Raw Command Execution
========================================================

:Date: July 08, 2026
:CVE: CVE-2026-54423


Affects
~~~~~~~
- Ironic: >=22.1.0 <29.0.6, >=30.0.0 <32.0.2, >=33.0.0 <35.0.2, >=36.0.0 
<37.0.1


Description
~~~~~~~~~~~
Dmitry Tantsur (Red Hat) and Tuomo Tanskanen (Ericsson Software 
Technology) of the Metal3.io Security Team descovered a vulnerability 
around IPMI management_interface. A malicious user with access to deploy 
a node directly via Ironic can specify the IPMI `send_raw` deployment 
step with a malicious payload and send commands to that nodes' BMC.
IPMI `send_raw` capability is exposed multiple ways, including via our 
VendorPassthru interfaces (restricted to system admin) and other step 
based flows such as cleaning or servicing. This also means any malicious 
user with the ability to initate manual cleaning and servicing flows 
with arbitrary steps can also execute this vulnerability.
Operators can fix this issue by applying the provided patches which 
apply a blocklist forbidding use of the IPMI send_raw functionality in 
certain provisioning methods. Clouds currently using IPMI send_raw 
functionality should carefully review the behavior changes in the 
provided patches to ensure their workflows are not broken.



Patches
~~~~~~~
- https://review.opendev.org/c/openstack/ironic/+/996477 (2025.1/epoxy)
- https://review.opendev.org/c/openstack/ironic/+/992732 (2025.1/epoxy)
- https://review.opendev.org/c/openstack/ironic/+/996475 (2025.2/flamingo)
- https://review.opendev.org/c/openstack/ironic/+/992719 (2025.2/flamingo)
- https://review.opendev.org/c/openstack/ironic/+/996466 (2026.1/gazpacho)
- https://review.opendev.org/c/openstack/ironic/+/992516 (2026.1/gazpacho)
- https://review.opendev.org/c/openstack/ironic/+/996461 
(2026.2/hibiscus (development))
- https://review.opendev.org/c/openstack/ironic/+/989017 
(2026.2/hibiscus (development))
- https://review.opendev.org/c/openstack/ironic/+/996473 (Bugfix/33.0)
- https://review.opendev.org/c/openstack/ironic/+/992718 (Bugfix/33.0)
- https://review.opendev.org/c/openstack/ironic/+/996470 (Bugfix/34.0)
- https://review.opendev.org/c/openstack/ironic/+/992717 (Bugfix/34.0)
- https://review.opendev.org/c/openstack/ironic/+/996463 (Bugfix/37.0)
- The prerequisite patch was merged before bugfix/37.0 was tagged. 
(Bugfix/37.0)


Credits
~~~~~~~
- Dmitry Tantsur from Red Hat
- Tuomo Tanskanen from Ericcson Software Technology


References
~~~~~~~~~~
- https://bugs.launchpad.net/ironic/+bug/2150458
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-54423


Notes
~~~~~
- Ironic bugfix branch patches will be available in git for interested
   operators. We will not perform an additional release from these
   branches.


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
