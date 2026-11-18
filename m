X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/11
Message-ID: <av3isYlMqcWNndo7@yuggoth.org>
Date: Wed, 18 Nov 2026 17:38:57 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-052] OpenStack keystonemiddleware: ReDoS in AppCred access_rules processing (CVE-2026-131922) Errata 1
Content-Type: text/plain; charset=utf-8

==========================================================================
OSSA-2026-052: keystonemiddleware ReDoS in AppCred access_rules processing
==========================================================================

:Date: November 17, 2026
:CVE: CVE-2026-131922

Affects
~~~~~~~
- Keystonemiddleware: <10.13.1, >=11.0.0 <12.1.1, >=13.0.0 <13.0.3

Description
~~~~~~~~~~~
Rock Xu reported a vulnerability in keystonemiddleware access rule 
path matching. By supplying a malicious regular expression when 
creating an application credential access_rules entry, an 
authenticated user may consume resources in the consuming process 
making a service unresponsive. All OpenStack service deployments may 
be affected.

Errata
~~~~~~
MITRE assigned CVE-2026-131922 for this vulnerability on 2026-11-18.

Patches
~~~~~~~
- https://review.opendev.org/1016061 (2025.1/epoxy (unmaintained))
- https://review.opendev.org/1016060 (2025.2/flamingo (stable))
- https://review.opendev.org/1016059 (2026.1/gazpacho (stable))
- https://review.opendev.org/1016058 (2026.2/hibiscus (stable))
- https://review.opendev.org/1016057 (2027.1/indri (development))

Credits
~~~~~~~
- Rock Xu

References
~~~~~~~~~~
- https://launchpad.net/bugs/2167923
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-131922

Notes
~~~~~
- The unmaintained/2025.1 branch is not actively maintained and no 
   longer receives new releases, but a patch is being provided as a 
   convenience.

OSSA History
~~~~~~~~~~~~
- 2026-11-18 - Errata 1
- 2026-11-17 - Original Version

-- 
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
