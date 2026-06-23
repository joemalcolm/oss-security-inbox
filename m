X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/5
Message-ID: <7ee7a344-89a1-4935-8fa4-b38a836b4a7d@gmail.com>
Date: Tue, 23 Jun 2026 08:29:34 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-024] OpenStack Swift: Swift proxy-server SSRF via header injection (CVE-2026-50221)
Content-Type: text/plain; charset=utf-8

OpenStack Security Advisory: OSSA-2026-024
CVE: CVE-2026-50221

Title: Swift proxy-server SSRF via header injection

Affects: Swift >=2.0.0 <2.35.3, >=2.36.0 <2.36.2, >=2.37.0 <2.37.2

Description:
Tim Shephard from roiai.ca reported a server-side request forgery
(SSRF) vulnerability in Swift's proxy-server. An authenticated
user can cause Swift object servers to issue outbound HTTP requests
to attacker-specified hosts, potentially exposing internal
infrastructure details. All deployments running Swift 2.0.0 or
later are affected.

Patches:
   2026.2/hibiscus (development): https://review.opendev.org/994449
   2026.1/gazpacho:               https://review.opendev.org/994450
   2025.2/flamingo:               https://review.opendev.org/994451
   2025.1/epoxy:                  https://review.opendev.org/994452

Credits:
   Tim Shephard from roiai.ca (CVE-2026-50221)

References:
   https://security.openstack.org/ossa/OSSA-2026-024.html
   https://launchpad.net/bugs/2150261
   http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-50221

Regards,
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
