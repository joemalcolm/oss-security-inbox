X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/16/5
Message-ID: <e459cb8e-e827-4d97-a885-306a55ae7638@gmail.com>
Date: Tue, 16 Jun 2026 07:58:52 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-022] OpenStack Nova: Nova scheduler hint injection bypasses Placement resource claims and scheduling constraints (CVE-2026-46448)
Content-Type: text/plain; charset=utf-8

==========================================================================================================
OSSA-2026-022: Nova scheduler hint injection bypasses Placement resource 
claims and scheduling constraints
==========================================================================================================

:Date: June 16, 2026
:CVE: CVE-2026-46448


Affects
~~~~~~~
- Nova: >=18.0.0 <31.3.1, >=32.0.0 <32.2.1, >=33.0.0 <33.0.2


Description
~~~~~~~~~~~
Erichen from the Institute of Computing Technology, Chinese Academy of 
Sciences reported that Nova's server create API does not strip internal 
scheduler hints. An authenticated user can bypass Placement resource 
claims and scheduling constraint enforcement, including availability 
zone, host aggregate, and image trait restrictions. The resulting 
instance has no Placement allocation, which can lead to compute node 
resource exhaustion and cross-tenant data persistence on NVMe devices 
after instance deletion. Deployments running Nova 18.0.0 or later are 
affected.



Patches
~~~~~~~
- https://review.opendev.org/993604 (2025.1/epoxy)
- https://review.opendev.org/993603 (2025.2/flamingo)
- https://review.opendev.org/993602 (2026.1/gazpacho)
- https://review.opendev.org/993601 (2026.2/hibiscus)


Credits
~~~~~~~
- Erichen from Institute of Computing Technology, Chinese Academy of 
Sciences (CVE-2026-46448)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2151252
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-46448

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
