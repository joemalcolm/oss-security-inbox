X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/21/6
Message-ID: <b4a3c8ea-ad74-4eb9-9d0b-bae3ef6fc22a@gmail.com>
Date: Mon, 21 Sep 2026 10:08:43 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-039] OpenStack Octavia: HAProxy configuration injection leading to remote code execution in Octavia (CVE-2026-pending)
Content-Type: text/plain; charset=utf-8

==========================================================================================
OSSA-2026-039: HAProxy configuration injection leading to remote code 
execution in Octavia
==========================================================================================

:Date: September 21, 2026
:CVE: CVE-2026-pending,
       CVE-2026-pending


Affects
~~~~~~~
- Octavia: >=0.8.0 <16.1.0, ==17.0.0, ==18.0.0


Description
~~~~~~~~~~~
Chen YuXiang from the Institute of Computing Technology, Chinese
Academy of Sciences reported input validation flaws in the Octavia
load balancer API. The listener and pool ``tls_ciphers`` fields and
the L7 policy ``redirect_url`` and ``redirect_prefix`` fields were
written into the HAProxy configuration generated on the amphora
without rejecting control characters, allowing an authenticated user
who owns a load balancer managed by OpenStack Octavia's Amphora
provider to inject arbitrary HAProxy configuration directives.

Subsequently, an independent reporter, "Rolix", demonstrated that
these flaws can be exploited to execute arbitrary commands as root
on the provider-managed amphora, to disclose other tenants' TLS
private keys and certificates and the deployment heartbeat key
stored on the amphora, and to reach the control-plane network to
which the amphora is attached.

Only the Amphora provider driver is affected. Deployments that use a
different provider driver do not render tenant input into an HAProxy
configuration and are not affected.



Patches
~~~~~~~
- https://review.opendev.org/1001096 (2025.1/epoxy)
- https://review.opendev.org/1001097 (2025.1/epoxy)
- https://review.opendev.org/1001094 (2025.2/flamingo)
- https://review.opendev.org/1001095 (2025.2/flamingo)
- https://review.opendev.org/1001091 (2026.1/gazpacho)
- https://review.opendev.org/1001092 (2026.1/gazpacho)
- https://review.opendev.org/999553 (2026.2/hibiscus)
- https://review.opendev.org/999555 (2026.2/hibiscus)


Credits
~~~~~~~
- Chen YuXiang from Institute of Computing Technology, Chinese Academy 
of Sciences
- "Rolix" from Independent


References
~~~~~~~~~~
- https://launchpad.net/bugs/2167565
- https://launchpad.net/bugs/2162101
- https://launchpad.net/bugs/2162103
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending


Notes
~~~~~
- Two changes are required on each branch: one fixes the ``tls_ciphers``
   fields and one fixes the L7 policy redirect fields.
- The listener and pool ``tls_ciphers`` fields were introduced in
   Octavia 6.0.0. Releases within the affected range that predate 6.0.0
   are vulnerable only through the L7 policy ``redirect_url`` and
   ``redirect_prefix`` fields.
- These issues were originally triaged as a low-severity hardening
   opportunity and the fixes were developed and merged in public. They
   were reclassified after a proof of concept demonstrated remote code
   execution as root on the amphora and reachability of the control-plane
   network.
- The remote code execution issue was reported to the OpenStack VMT by
   Thomas Goirand (zigo) of Infomaniak, on behalf of the reporter,
   "Rolix".
- CVE identifiers were requested from MITRE for these two
   vulnerabilities on 2026-09-17. The CVEs will be added to this advisory
   by errata once assigned.

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
