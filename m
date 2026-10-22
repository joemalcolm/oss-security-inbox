X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/6
Message-ID: <08ae2141-eec1-4137-b45e-e21d52d8b37d@jvf.cc>
Date: Thu, 22 Oct 2026 08:49:48 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-047] Ironic: Redfish vendor_passthru method allows path injection via ID (CVE-2026-90458)
Content-Type: text/plain; charset=utf-8

==========================================================================
OSSA-2026-047: Redfish vendor_passthru method allows path injection via ID
==========================================================================

:Date: October 22, 2026
:CVE: CVE-2026-90458


Affects
~~~~~~~
- Ironic: >=18.1.0 <=29.1.1, >30.0.0 <=32.1.1, >33.0.0 <=35.1.1, >36.0.0 
<=39.0.1


Description
~~~~~~~~~~~
The Metal3.io Security team reported a vulnerability in Ironic's API.
When calling the ``vendor_passthru`` API endpoint provided by the
``redfish`` management interface to create or delete a subscription,
a malicious System-scoped Administrator could instead perform an HTTP
DELETE or HTTP GET on an arbitrary path on a node's BMC. In a worst
case scenario, this could lead to user accounts being deleted from
the Redfish service on the BMC.

Only clouds with nodes enrolled in a redfish hardware type are
susceptible to this vulnerability.



Patches
~~~~~~~
- https://review.opendev.org/1011870 (2024.1/caracal (unmaintained))
- https://review.opendev.org/1011868 (2025.1/epoxy)
- https://review.opendev.org/1011866 (2025.2/flamingo)
- https://review.opendev.org/1011864 (2026.1/gazpacho)
- https://review.opendev.org/1011862 (2026.2/hibiscus)
- https://review.opendev.org/1011860 (2027.1/indri (development))
- https://review.opendev.org/1011874 (Bugfix/37.0)
- https://review.opendev.org/1011872 (Bugfix/38.0)


Credits
~~~~~~~
- Tuomo Tanskanen, Metal3.io Security Team from Ericsson Software 
Technology (CVE-2026-90458)
- Dmitry Tantsur, Metal3.io Security Team from Red Hat (CVE-2026-90458)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2166507
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-90458


Notes
~~~~~
- Patches for unmaintained/2024.1, bugfix/38.0 and bugfix/37.0 will be
   merged to git but no new release will be provided.


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
