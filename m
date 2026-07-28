X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/27
Message-ID: <d9dc6f79-f3ca-4b33-ab86-ac24177a484d@gmail.com>
Date: Tue, 28 Jul 2026 08:28:03 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-031] OpenStack Swift: Proxy denial of service via Accept header (CVE-2026-pending)
Content-Type: text/plain; charset=utf-8

==============================================================
OSSA-2026-031: Swift proxy denial of service via Accept header
==============================================================

:Date: July 28, 2026
:CVE: CVE-2026-pending


Affects
~~~~~~~
- Swift: >=1.9.1 <2.35.4, >=2.36.0 <2.36.3, >=2.37.0 <2.37.3, ==2.38.0


Description
~~~~~~~~~~~
Christian Schwede from NVIDIA reported a denial of service vulnerability 
in Swift's proxy server. The Accept header parser is vulnerable to 
catastrophic regular expression backtracking. An unauthenticated 
attacker can send crafted requests that exhaust proxy worker threads, 
rendering the service unavailable. All deployments running Swift proxy 
with versions between 1.9.1 and the fixed releases listed below are 
affected.



Patches
~~~~~~~
- https://review.opendev.org/998953 (2025.1/epoxy)
- https://review.opendev.org/998952 (2025.2/flamingo)
- https://review.opendev.org/998951 (2026.1/gazpacho)
- https://review.opendev.org/998950 (2026.2/hibiscus (development))


Credits
~~~~~~~
- Christian Schwede from NVIDIA


References
~~~~~~~~~~
- https://launchpad.net/bugs/2158771
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
