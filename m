X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/16
Message-ID: <723030fa-127e-4c9a-a1b6-972af5aa1a28@jvf.cc>
Date: Wed, 5 Aug 2026 09:05:40 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-033] Ironic Portgroup shard filter bypasses project scope (CVE-2026-71201)
Content-Type: text/plain; charset=utf-8

============================================================
OSSA-2026-033: Portgroup shard filter bypasses project scope
============================================================

:Date: August 05, 2026
:CVE: CVE-2026-71201


Affects
~~~~~~~
- Ironic: >=34.0.0 <35.0.2, >=36.0.0 <38.0.1


Description
~~~~~~~~~~~
Chen YuXiang of Institute of Computing Technology, Chinese Academy
of Sciences reported an issue in Ironic's API. When a project
reader requests a list of portgroups filtered by shard, all portgroups
in that shard are returned, not just those in their project.

This is a similar vulnerability to the one originally advisoried in
OSSA-2026-026 -- that issue impacted ports; this impacts
portgroups.



Patches
~~~~~~~
- https://review.opendev.org/999762 (2026.1/gazpacho)
- https://review.opendev.org/999656 (2026.2/hibiscus (development))
- https://review.opendev.org/999765 (Bugfix/34.0)
- https://review.opendev.org/999764 (Bugfix/37.0)
- https://review.opendev.org/999763 (Bugfix/38.0)


Credits
~~~~~~~
- Chen YuXiang from Institute of Computing Technology, Chinese Academy 
of Sciences


References
~~~~~~~~~~
- https://launchpad.net/bugs/2162715
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-71201


Notes
~~~~~
- Ironic bugfix branch patches will be available in git for interested
   operators. We will not perform an additional release from these
   branches.

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
