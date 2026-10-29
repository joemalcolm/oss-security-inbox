X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/29/2
Message-ID: <auNclk4pLguynoUW@yuggoth.org>
Date: Thu, 29 Oct 2026 14:47:50 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-050] OpenStack keystonemiddleware: access_rules bypass via X-Service-Token (CVE-2026-115642)
Content-Type: text/plain; charset=utf-8

=========================================================================
OSSA-2026-050: keystonemiddleware access_rules bypass via X-Service-Token
=========================================================================

:Date: October 29, 2026
:CVE: CVE-2026-115642

Affects
~~~~~~~
- Keystonemiddleware: 
   <10.9.2, >=10.10.0 <10.12.2, >=11.0.0 <12.0.1, >=13.0.0 <13.0.2

Description
~~~~~~~~~~~
Nassim Abbaoui with OVHcloud reported a vulnerability in 
keystonemiddleware application credential access_rules enforcement. 
By supplying a custom X-Service-Token header in a request, anyone in 
posession of an access-restricted application credential may bypass 
those restrictions resulting in elevation of privileges. Deployments 
that use application credential access_rules, or that enforce token 
binding, are affected.

Patches
~~~~~~~
- https://review.opendev.org/1012874 (2025.1/epoxy)
- https://review.opendev.org/1012873 (2025.2/flamingo)
- https://review.opendev.org/1012872 (2026.1/gazpacho)
- https://review.opendev.org/1012871 (2026.2/hibiscus)
- https://review.opendev.org/1012869 (2027.1/indri (development))

Credits
~~~~~~~
- Nassim Abbaoui from OVHcloud (CVE-2026-115642)

References
~~~~~~~~~~
- https://launchpad.net/bugs/2162748
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-115642

-- 
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
