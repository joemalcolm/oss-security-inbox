X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/17/2
Message-ID: <aoNZ67XppWoJX0Ot@yuggoth.org>
Date: Mon, 17 Aug 2026 18:58:51 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: Re: [OSSA-2026-035] OpenStack Octavia: Unauthorized QoS policy deletion lock (CVE-2026-74248) errata 1
Content-Type: text/plain; charset=utf-8

====================================================
OSSA-2026-035: Unauthorized QoS policy deletion lock
====================================================

:Date: August 13, 2026
:CVE: CVE-2026-74248

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

Errata
~~~~~~
MITRE assigned CVE-2026-74248 after intial publication.

Patches
~~~~~~~
- https://review.opendev.org/1000296 (2025.1/epoxy)
- https://review.opendev.org/1000295 (2025.2/flamingo)
- https://review.opendev.org/1000094 (2026.1/gazpacho)
- https://review.opendev.org/998935 (2026.2/hibiscus (development))

Credits
~~~~~~~
- Chen YuXiang from Institute of Computing Technology, Chinese 
   Academy of Sciences (CVE-2026-74248)

References
~~~~~~~~~~
- https://launchpad.net/bugs/2161500
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-74248

OSSA History
~~~~~~~~~~~~
- 2026-08-17 - Errata 1
- 2026-08-13 - Original Version

-- 
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
