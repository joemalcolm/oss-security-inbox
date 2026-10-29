X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/29/1
Message-ID: <b650b606-7236-4b85-a6d5-2e417f41b489@jvf.cc>
Date: Thu, 29 Oct 2026 07:14:32 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-049] Ironic: Conductor DoS via gzip bomb configdrive (CVE-2026-115638)
Content-Type: text/plain; charset=utf-8

=============================================================
OSSA-2026-049: Ironic Conductor DoS via gzip bomb configdrive
=============================================================

:Date: October 29, 2026
:CVE: CVE-2026-115638


Affects
~~~~~~~
- Ironic: >=16.2.0 <29.1.1, >=30.0.0 <32.1.1, >=33.0.0 <35.1.1, >=36.0.0 
<39.0.1


Description
~~~~~~~~~~~
Jay Faulkner of G-Research Open Source Software reported a vulnerability
in the Ironic conductor. The Ironic conductor can be subjected to an out
of memory or disk full condition when attempting to extract a
base64-encoded, gzipped configdrive image submitted via
``/v1/nodes/provision_state`` when deploying a node.

This issue impacts environments where users have access to deploy
instances directly via Ironic.



Patches
~~~~~~~
- https://review.opendev.org/1012759 (2024.1/caracal (unmaintained))
- https://review.opendev.org/1012134 (2025.1/epoxy)
- https://review.opendev.org/1012130 (2025.2/flamingo)
- https://review.opendev.org/1012123 (2026.1/gazpacho)
- https://review.opendev.org/1012122 (2026.2/hibiscus)
- https://review.opendev.org/1011906 (2027.1/indri (development))
- https://review.opendev.org/1012743 (2027.1/indri (development))
- https://review.opendev.org/1012133 (Bugfix/37.0)
- https://review.opendev.org/1012132 (Bugfix/38.0)


Credits
~~~~~~~
- Jay Faulkner from G-Research Open Source Software (CVE-2026-115638)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2171814
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-115638


Notes
~~~~~
- Patches for unmaintained/2024.1, bugfix/38.0, and bugfix/37.0 will be
   merged to git but no new release will be provided.


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
