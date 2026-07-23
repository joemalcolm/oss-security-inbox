X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/23/7
Message-ID: <85249762-8ba9-4ea6-8f88-0079ccbfd79d@gmail.com>
Date: Thu, 23 Jul 2026 12:45:07 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-029] OpenStack Zaqar: EXTRA-SPEC header bypasses Keystone authentication (CVE-2026-pending)
Content-Type: text/plain; charset=utf-8

=======================================================================
OSSA-2026-029: Zaqar EXTRA-SPEC header bypasses Keystone authentication
=======================================================================

:Date: July 23, 2026
:CVE: CVE-2026-pending


Affects
~~~~~~~
- Zaqar: >=12.0.0 <20.1.1, ==21.0.0, ==22.0.0


Description
~~~~~~~~~~~
Chen YuXiang from the Institute of Computing Technology, Chinese
Academy of Sciences reported that the Zaqar messaging service
bypasses Keystone authentication when an EXTRA-SPEC header is
present in the request. An unauthenticated attacker who knows a
project UUID can read, enumerate, create, and delete that project's
queues without a Keystone token. The EXTRA-SPEC header was intended
to support an alternative authentication mechanism, but the backend
validation was never implemented, resulting in a complete
authentication bypass. All deployments running Zaqar 12.0.0 or
later are affected.


Patches
~~~~~~~
- https://review.opendev.org/998272 (2026.2/hibiscus (development))
- https://review.opendev.org/998400 (2026.1/gazpacho)
- https://review.opendev.org/998410 (2025.2/flamingo)
- https://review.opendev.org/998411 (2025.1/epoxy)


Credits
~~~~~~~
- Chen YuXiang from Institute of Computing Technology, Chinese Academy 
of Sciences


References
~~~~~~~~~~
- https://launchpad.net/bugs/2161254
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending


Notes
~~~~~
- A CVE assignment is pending from MITRE. This advisory will be updated
   when the CVE is assigned.
- https://review.opendev.org/998223 proposes removing the EXTRA-SPEC
   feature entirely as a follow-up hardening measure.

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
