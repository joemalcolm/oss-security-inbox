X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/12
Message-ID: <an4CTEbD8_RaJ4Zc@yuggoth.org>
Date: Thu, 13 Aug 2026 17:43:40 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-035] OpenStack Octavia: Unauthorized QoS policy deletion lock (CVE pending)
Content-Type: text/plain; charset=utf-8

====================================================
OSSA-2026-035: Unauthorized QoS policy deletion lock
====================================================

:Date: August 13, 2026
:CVE: PENDING

Affects
~~~~~~~
- Octavia: <16.0.2, ==17.0.0, ==18.0.0

Description
~~~~~~~~~~~
Chen YuXiang with the Institute of Computing Technology, Chinese 
Academy of Sciences, reported a vulnerability in Octavia quality of 
service (QoS) policy authorization. By associating another project's 
QoS policy with an amphora, an authenticated user may prevent 
deletion of that policy. All Octavia deployments are affected.

Patches
~~~~~~~
- https://review.opendev.org/1000296 (2025.1/epoxy)
- https://review.opendev.org/1000295 (2025.2/flamingo)
- https://review.opendev.org/1000094 (2026.1/gazpacho)
- https://review.opendev.org/998935 (2026.2/hibiscus (development))

Credits
~~~~~~~
- Chen YuXiang from Institute of Computing Technology, Chinese Academy of Sciences

References
~~~~~~~~~~
- https://launchpad.net/bugs/2161500

Notes
~~~~~
- A CVE assignment was requested from MITRE on 2026-08-05 (request
   2079027); this advisory will be updated with the ID in an errata
   publication once it becomes available.

-- 
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
