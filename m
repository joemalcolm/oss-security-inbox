X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/19/5
Message-ID: <76b2630b-8806-4924-9750-2e8a4bef6f37@gmail.com>
Date: Wed, 19 Aug 2026 09:18:34 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-036] OpenStack Aodh and Watcher: Aodh cross-project alarm enumeration and Watcher webhook authorization bypass (CVE-2026-pending)
Content-Type: text/plain; charset=utf-8

============================================================================================
OSSA-2026-036: Aodh cross-project alarm enumeration and Watcher webhook 
authorization bypass
============================================================================================

:Date: August 19, 2026
:CVE: CVE-2026-pending


Affects
~~~~~~~
- Aodh: >=10.0.0 <20.0.1, ==21.0.0, ==22.0.0
- Watcher: >=4.0.0 <14.1.2, >=15.0.0 <15.1.2, >=16.0.0 <16.0.2


Description
~~~~~~~~~~~
Chen YuXiang of the Institute of Computing Technology, Chinese
Academy of Sciences reported that OpenStack Aodh does not enforce
project scope on the alarm listing API when the ``all_projects``
query parameter is supplied with a false value. A non-admin user
holding only the reader role can list alarms belonging to other
projects, optionally targeting a specific project, exposing alarm
metadata such as webhook action URLs, signal endpoints, and project
identifiers. All Aodh deployments are affected.

The same reporter found that OpenStack Watcher does not apply
authorization to its webhook trigger endpoint. Any authenticated
user who learns an audit's webhook URL, for example from the Aodh
alarm metadata leaked above, can start an ``EVENT`` audit and its
associated action plan regardless of their own project or role.
All Watcher deployments are affected.


Patches
~~~~~~~
- https://review.opendev.org/1001503 (2025.1/epoxy (aodh))
- https://review.opendev.org/1001509 (2025.1/epoxy (watcher))
- https://review.opendev.org/1001502 (2025.2/flamingo (aodh))
- https://review.opendev.org/1001508 (2025.2/flamingo (watcher))
- https://review.opendev.org/1001501 (2026.1/gazpacho (aodh))
- https://review.opendev.org/1001507 (2026.1/gazpacho (watcher))
- https://review.opendev.org/1001500 (2026.2/hibiscus (development) (aodh))
- https://review.opendev.org/1001505 (2026.2/hibiscus (development) 
(watcher))


Credits
~~~~~~~
- Chen YuXiang from Institute of Computing Technology, Chinese Academy 
of Sciences


References
~~~~~~~~~~
- https://launchpad.net/bugs/2161276
- https://launchpad.net/bugs/2161771
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending


Notes
~~~~~
- A CVE identifier was requested from MITRE for the aodh vulnerability
   on 2026-08-03. The CVE will be added to this advisory by errata once
   assigned.

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
