X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/29/5
Message-ID: <8d650cd9-2bc1-485f-bc9c-cf93567c2c3c@gmail.com>
Date: Wed, 29 Jul 2026 08:02:33 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-032] OpenStack Neutron: Subnetpool onboarding cross-project subnet mutation (CVE-2026-55707)
Content-Type: text/plain; charset=utf-8

==================================================================
OSSA-2026-032: Subnetpool onboarding cross-project subnet mutation
==================================================================

:Date: July 29, 2026
:CVE: CVE-2026-55707


Affects
~~~~~~~
- Neutron: >=14.0.0 <26.0.6, >=27.0.0 <27.0.4, >=28.0.0 <28.0.2


Description
~~~~~~~~~~~
Tim Shephard from roiai.ca reported a vulnerability in Neutron's 
subnetpool onboarding API. A project member can onboard subnets from 
another project's shared network into their own subnetpool, mutating the 
victim's persistent subnet state and altering L3 routing, NAT, and 
address-scope behavior for victim routers. Only deployments with shared 
or RBAC-shared networks and the subnetpool onboarding extension enabled 
are affected.



Patches
~~~~~~~
- https://review.opendev.org/999134 (2025.1/epoxy)
- https://review.opendev.org/999133 (2025.2/flamingo)
- https://review.opendev.org/999132 (2026.1/gazpacho)
- https://review.opendev.org/999131 (2026.2/hibiscus (development))


Credits
~~~~~~~
- Tim Shephard from roiai.ca


References
~~~~~~~~~~
- https://launchpad.net/bugs/2152113
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-55707

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--- END BODY ---

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
