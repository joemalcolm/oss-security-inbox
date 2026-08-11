X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/11/6
Message-ID: <e60c186a-7c8e-4717-9b0a-a57728532445@gmail.com>
Date: Tue, 11 Aug 2026 08:18:43 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-034] OpenStack Designate: Cross-tenant DNS zone overlap and mDNS DoS via pool scheduling (CVE-2026-71193, CVE-2026-71194)
Content-Type: text/plain; charset=utf-8

=============================================================================
OSSA-2026-034: Cross-tenant DNS zone overlap and mDNS DoS via pool 
scheduling
=============================================================================

:Date: August 11, 2026
:CVE: CVE-2026-71193,
       CVE-2026-71194


Affects
~~~~~~~
- Designate: >=1.0.0 <20.0.2, ==21.0.0, ==22.0.0


Description
~~~~~~~~~~~
Tore Anderson of Redpill Linpro AS reported that OpenStack Designate 
does not enforce cross-pool zone ownership checks when scheduling a zone 
to a non-default pool via the attribute filter. A tenant can create a 
sub-zone, super-zone, or duplicate of another tenant's zone by targeting 
a different pool, enabling DNS hijack or denial of service. 
Independently, Omer Schwartz of Red Hat identified that the mDNS handler 
performs pool-blind record lookups, causing a deterministic denial of 
service when colliding zones exist across pools. All deployments using 
multiple Designate pools are affected.



Patches
~~~~~~~
- https://review.opendev.org/1000475 (2025.1/epoxy)
- https://review.opendev.org/1000474 (2025.2/flamingo)
- https://review.opendev.org/1000473 (2026.1/gazpacho)
- https://review.opendev.org/1000471 (2026.2/hibiscus (development))


Credits
~~~~~~~
- Tore Anderson from Redpill Linpro AS
- Omer Schwartz from Red Hat


References
~~~~~~~~~~
- https://launchpad.net/bugs/2160533
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-71193
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-71194


Notes
~~~~~
- The stable branch patches depend on two prerequisite backports (mDNS
   split-horizon pool scoping, Change 998005/998006 and their stable
   equivalents) that were merged before disclosure. Operators applying
   the fix to releases older than the next point release should ensure
   those prerequisite commits are present.
- Operators should audit existing zones for cross-tenant collisions that
   may have been created before the fix. A detection tool will be
   proposed as a separate public patch.

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html


Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
