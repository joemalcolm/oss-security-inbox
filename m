X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/21/7
Message-ID: <3e07d2dd-acd8-4278-9601-7d25688c086c@gmail.com>
Date: Mon, 21 Sep 2026 10:10:18 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-040] OpenStack Blazar: Multiple authorization vulnerabilities in the Blazar V2 lease API (CVE-2026-93852, CVE-2026-93854)
Content-Type: text/plain; charset=utf-8

================================================================================
OSSA-2026-040: Multiple authorization vulnerabilities in the Blazar V2 
lease API
================================================================================

:Date: September 21, 2026
:CVE: CVE-2026-93852,
       CVE-2026-93854


Affects
~~~~~~~
- Blazar: >=1.0.0 <15.1.1, ==16.0.0, ==17.0.0


Description
~~~~~~~~~~~
Rohan Das from the University of Engineering and Management, Kolkata,
reported that the Blazar V2 lease API does not enforce object-level
authorization on its update and delete operations. As a result, any
authenticated user who knows a lease ID can modify or delete leases
belonging to other users and projects.

The same reporter found that the Blazar V2 lease listing operation
returns leases for every project without enforcing project scoping
or an administrator-only policy. Any authenticated user can
enumerate other projects' leases, exposing lease and reservation
identifiers along with reservation metadata. The exposed
identifiers enable the object-level authorization bypass
described above, allowing an attacker to then modify or delete the
enumerated leases.

Only deployments that enable Blazar's V2 lease API are affected.
Deployers that do not use the V2 API endpoint can set
``api_v2_controllers`` to an empty value in the ``[api]`` section of
``blazar.conf``. Patches below address the issue if the API
controllers cannot be disabled.



Patches
~~~~~~~
- https://review.opendev.org/1006053 (2025.1/epoxy)
- https://review.opendev.org/1006052 (2025.2/flamingo)
- https://review.opendev.org/1006051 (2026.1/gazpacho)
- https://review.opendev.org/1006050 (2026.2/hibiscus)
- https://review.opendev.org/1006049 (2027.1/indri (development))


Credits
~~~~~~~
- Rohan Das from University of Engineering and Management, Kolkata


References
~~~~~~~~~~
- https://launchpad.net/bugs/2162719
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-93852
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-93854


Notes
~~~~~
- A single patch on each branch fixes both vulnerabilities.

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
