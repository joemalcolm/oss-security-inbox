X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/22/6
Message-ID: <c0a06c34-828f-4635-9265-d700c8b2b52a@tenstral.net>
Date: Wed, 22 Apr 2026 17:29:25 +0200
From: Matthias Klumpp <matthias@...stral.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41651: TOCTOU vulnerability in PackageKit <= 1.3.4 leads to local root exploit
Content-Type: text/plain; charset=utf-8

Hello everyone!

I am the maintainer of PackageKit, a D-Bus abstraction layer for 
distribution package management that is commonly used on non-atomic 
(Linux) desktop distributions, as well as some servers running 
management software that make use of it.

A vulnerability was reported to the project by Deutsche Telekom’s Red 
Team that allows the user to install/remove arbitrary packages, leading 
to a local root exploit on most systems.

Distributors were informed in advance (directly and via distros@), so 
fixed packages should be available already. Assume all versions of 
PackageKit <= 1.3.4 that were not patched are vulnerable.

This patch resolves the issue:
https://github.com/PackageKit/PackageKit/commit/76cfb675fb31acc3ad5595d4380bfff56d2a8697

PackageKit 1.3.5 which resolves this issue was released today as well, 
with the embargo lift.

For further information on the issue, the security researchers published 
a blog post:
https://github.security.telekom.com/2026/04/pack2theroot-linux-local-privilege-escalation.html

A GHSA is also available at: 
https://github.com/PackageKit/PackageKit/security/advisories/GHSA-f55j-vvr9-69xv

We are currently intentionally light on details, to give users some time 
to update their systems before this issue is actively exploited. So, 
expect a detailed vulnerability report soon (the blog post will be 
updated in that case).

The patch that fixes the issue is already a huge tell though, so please 
make sure your users receive the update soon (or update yourself), to 
ensure this is fixed before anyone actively exploits the issue.

With kind regards,
     Matthias Klumpp

