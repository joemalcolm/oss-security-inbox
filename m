X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/1
Message-ID: <asewIvEqCHJAK2gp@yuggoth.org>
Date: Thu, 8 Oct 2026 15:00:50 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-044] OpenStack Mistral: Four authorization and privilege vulnerabilities in Mistral (CVE-2026-93858, CVE-2026-93860, CVE-2026-93861, CVE-2026-97147))
Content-Type: text/plain; charset=utf-8

==========================================================================
OSSA-2026-044: Four authorization and privilege vulnerabilities in Mistral
==========================================================================

:Date: October 08, 2026
:CVE: CVE-2026-93858,
       CVE-2026-93860,
       CVE-2026-93861,
       CVE-2026-97147

Affects
~~~~~~~
- Mistral: <20.1.1, ==21.0.0, ==22.0.0, ==23.0.0

Description
~~~~~~~~~~~
Arnaud Morin from OVHcloud reported that several of Mistral's v2 API 
write paths resolve the target object with a query that can return 
another project's resource, then write to it (CVE-2026-97147). An 
authenticated project member can use this to rewrite and un-publish 
another project's public action definitions and environments. A 
project administrator can create a workbook whose embedded ad-hoc 
action or workflow name collides with a resource of another project, 
which moves that resource into the caller's project and causes the 
original owner's subsequent updates of it to fail with server 
errors. All deployments exposing the Mistral API are affected.

Chen YuXiang from the Institute of Computing Technology, Chinese 
Academy of Sciences reported that Mistral's workflow membership API 
lets a project that has accepted a share of another project's 
private workflow create a further membership naming a third project 
(CVE-2026-93861). The new membership row is created with its 
project_id defaulted to the accepting project rather than the 
original workflow owner, so the owner can neither see nor delete it. 
The third project can accept this membership it was never actually 
granted by the owner, then read and execute the owner's private 
workflow; only the accepting (not the owning) project can later 
revoke that access.

Chen YuXiang also reported a vulnerability in Mistral's ssh_proxied 
action provider (CVE-2026-93858). By supplying a specially-crafted 
action payload, an unprivileged authenticated user may override 
paramiko's proxy_command resulting in execution of arbitrary code on 
the executor host operating system. Only Mistral deployments 
allowing the std.ssh_proxied action provider (the default) are 
affected.

Chen YuXiang further reported a vulnerability in Mistral's 
maintenance API method (CVE-2026-93860). By calling the maintenance 
API method, an unprivileged authenticated user may pause processing 
for creation of new objects for all tenant projects resulting in a 
temporary denial of service. All Mistral deployments are affected.

Patches
~~~~~~~
- https://review.opendev.org/1009502 (2025.1/epoxy)
- https://review.opendev.org/1009503 (2025.1/epoxy)
- https://review.opendev.org/1009504 (2025.1/epoxy)
- https://review.opendev.org/1009505 (2025.1/epoxy)
- https://review.opendev.org/1009506 (2025.1/epoxy)
- https://review.opendev.org/1009507 (2025.1/epoxy)
- https://review.opendev.org/1009508 (2025.1/epoxy)
- https://review.opendev.org/1009509 (2025.1/epoxy)
- https://review.opendev.org/1009493 (2025.2/flamingo)
- https://review.opendev.org/1009494 (2025.2/flamingo)
- https://review.opendev.org/1009495 (2025.2/flamingo)
- https://review.opendev.org/1009496 (2025.2/flamingo)
- https://review.opendev.org/1009497 (2025.2/flamingo)
- https://review.opendev.org/1009498 (2025.2/flamingo)
- https://review.opendev.org/1009499 (2025.2/flamingo)
- https://review.opendev.org/1009500 (2025.2/flamingo)
- https://review.opendev.org/1009484 (2026.1/gazpacho)
- https://review.opendev.org/1009485 (2026.1/gazpacho)
- https://review.opendev.org/1009486 (2026.1/gazpacho)
- https://review.opendev.org/1009487 (2026.1/gazpacho)
- https://review.opendev.org/1009488 (2026.1/gazpacho)
- https://review.opendev.org/1009489 (2026.1/gazpacho)
- https://review.opendev.org/1009490 (2026.1/gazpacho)
- https://review.opendev.org/1009491 (2026.1/gazpacho)
- https://review.opendev.org/1009476 (2026.2/hibiscus)
- https://review.opendev.org/1009477 (2026.2/hibiscus)
- https://review.opendev.org/1009478 (2026.2/hibiscus)
- https://review.opendev.org/1009479 (2026.2/hibiscus)
- https://review.opendev.org/1009480 (2026.2/hibiscus)
- https://review.opendev.org/1009481 (2026.2/hibiscus)
- https://review.opendev.org/1009482 (2026.2/hibiscus)
- https://review.opendev.org/1009483 (2026.2/hibiscus)
- https://review.opendev.org/1009468 (2027.1/indri (development))
- https://review.opendev.org/1009469 (2027.1/indri (development))
- https://review.opendev.org/1009470 (2027.1/indri (development))
- https://review.opendev.org/1009471 (2027.1/indri (development))
- https://review.opendev.org/1009472 (2027.1/indri (development))
- https://review.opendev.org/1009473 (2027.1/indri (development))
- https://review.opendev.org/1009474 (2027.1/indri (development))
- https://review.opendev.org/1009475 (2027.1/indri (development))

Credits
~~~~~~~
- Arnaud Morin from OVHcloud (CVE-2026-97147)
- Chen YuXiang from Institute of Computing Technology, Chinese 
   Academy of Sciences (CVE-2026-93858, CVE-2026-93860, 
   CVE-2026-93861)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2160267 (CVE-2026-97147)
- https://launchpad.net/bugs/2161277 (CVE-2026-93861)
- https://launchpad.net/bugs/2162100 (CVE-2026-93858)
- https://launchpad.net/bugs/2162789 (CVE-2026-93860)
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-93858
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-93860
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-93861
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-97147

-- 
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
