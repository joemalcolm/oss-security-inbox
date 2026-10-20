X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/18
Message-ID: <700f5b76-5aec-4417-b29a-95cd52d25cc4@gmail.com>
Date: Tue, 20 Oct 2026 09:30:32 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-046] OpenStack Manila: Manila allows cross-project public-share and export-metadata changes (CVE-2026-71195)
Content-Type: text/plain; charset=utf-8

===================================================================================
OSSA-2026-046: Manila allows cross-project public-share and 
export-metadata changes
===================================================================================

:Date: October 20, 2026
:CVE: CVE-2026-71195


Affects
~~~~~~~
- Manila: >=1.0.0 <20.0.3, >=21.0.0 <21.0.3, >=22.0.0 <22.0.2, ==23.0.0


Description
~~~~~~~~~~~
Chen YuXiang from the Institute of Computing Technology, Chinese Academy of
Sciences reported that a non-owner could modify access rules and
export-location metadata of another project's public share. Goutham Pacha
Ravi and Carlos da Silva from Red Hat identified further public-share paths:
a non-owner could soft-delete or restore a foreign public share, or create a
backup of it. A compatible storage backend may apply unauthorized changes to
existing access rules, disrupting access for the share's owner or authorized
users.

Separately, Yuliang Xiao reported that the export-location metadata API does
not scope its lookup to the share in the request. An authenticated project
member may therefore read, modify, or delete another project's 
export-location
metadata by supplying the target export-location UUID with the identifier of
a share they control. This issue is more easily exploitable with public
shares.

Deployments with public shares are affected by the public-share operations.
Deployments that utilize export-location metadata for shares are 
affected by the metadata vulnerability.



Patches
~~~~~~~
- https://review.opendev.org/1011483 (2025.1/epoxy)
- https://review.opendev.org/1011482 (2025.2/flamingo)
- https://review.opendev.org/1011481 (2026.1/gazpacho)
- https://review.opendev.org/1011479 (2026.2/hibiscus)
- https://review.opendev.org/1011478 (2027.1/indri (development))


Credits
~~~~~~~
- Chen YuXiang from Institute of Computing Technology, Chinese Academy 
of Sciences (CVE-2026-71195)
- Yuliang Xiao (CVE-2026-71195)


References
~~~~~~~~~~
- https://bugs.launchpad.net/manila/+bug/2161412
- https://bugs.launchpad.net/manila/+bug/2168962
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-71195


Notes
~~~~~
- The companion Manila Tempest plugin update,
   https://review.opendev.org/1011484, updates cross-project export-
   location tests to expect 404 after the fix.

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
