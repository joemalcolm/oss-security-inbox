X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/31
Message-ID: <244e7d0f-2446-4428-9e90-e240944728da@gmail.com>
Date: Wed, 7 Oct 2026 14:25:32 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: [OSSA-2026-043] OpenStack Zaqar: Zaqar WebSocket project substitution allows cross-project queue access (CVE-2026-107363) errata 1
Content-Type: text/plain; charset=utf-8

Errata 1 for OSSA-2026-043: CVE-2026-107363 has been assigned for this 
vulnerability.

=====================================================================================
OSSA-2026-043: Zaqar WebSocket project substitution allows cross-project 
queue access
=====================================================================================

:Date: October 07, 2026
:CVE: CVE-2026-107363


Affects
~~~~~~~
- Zaqar: >=1.0.0 <20.1.3, >=21.0.0 <21.0.3, >=22.0.0 <22.0.3, ==23.0.0


Description
~~~~~~~~~~~
Chen YuXiang from the Institute of Computing Technology, Chinese Academy
of Sciences reported a vulnerability in Zaqar's WebSocket transport. An
authenticated remote attacker who knows a target project's UUID may
substitute it in subsequent WebSocket frames to enumerate, inspect,
create, or delete queues belonging to that project. This may result in
unauthorized disclosure, modification, or loss of queue data. Only
deployments using the WebSocket transport with Keystone authentication
are affected.



Errata
~~~~~~
CVE-2026-107363 has been assigned for this vulnerability.



Patches
~~~~~~~
- https://review.opendev.org/1009254 (2025.1/epoxy)
- https://review.opendev.org/1009253 (2025.2/flamingo)
- https://review.opendev.org/1009252 (2026.1/gazpacho)
- https://review.opendev.org/1009251 (2026.2/hibiscus)
- https://review.opendev.org/1009250 (2027.1/indri (development))


Credits
~~~~~~~
- Chen YuXiang from Institute of Computing Technology, Chinese Academy 
of Sciences (CVE-2026-107363)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2161402
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-107363


OSSA History
~~~~~~~~~~~~
- 2026-10-07 - Errata 1
- 2026-10-07 - Original Version

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html



On 10/7/26 10:59 AM, Goutham Pacha Ravi wrote:
> =====================================================================================
> OSSA-2026-043: Zaqar WebSocket project substitution allows cross-project 
> queue access
> =====================================================================================
> 
> :Date: October 07, 2026
> :CVE: CVE-2026-pending
> 
> 
> Affects
> ~~~~~~~
> - Zaqar: >=1.0.0 <20.1.3, >=21.0.0 <21.0.3, >=22.0.0 <22.0.3, ==23.0.0
> 
> 
> Description
> ~~~~~~~~~~~
> Chen YuXiang from the Institute of Computing Technology, Chinese Academy
> of Sciences reported a vulnerability in Zaqar's WebSocket transport. An
> authenticated remote attacker who knows a target project's UUID may
> substitute it in subsequent WebSocket frames to enumerate, inspect,
> create, or delete queues belonging to that project. This may result in
> unauthorized disclosure, modification, or loss of queue data. Only
> deployments using the WebSocket transport with Keystone authentication
> are affected.
> 
> 
> 
> Patches
> ~~~~~~~
> - https://review.opendev.org/1009254 (2025.1/epoxy)
> - https://review.opendev.org/1009253 (2025.2/flamingo)
> - https://review.opendev.org/1009252 (2026.1/gazpacho)
> - https://review.opendev.org/1009251 (2026.2/hibiscus)
> - https://review.opendev.org/1009250 (2027.1/indri (development))
> 
> 
> Credits
> ~~~~~~~
> - Chen YuXiang from Institute of Computing Technology, Chinese Academy 
> of Sciences
> 
> 
> References
> ~~~~~~~~~~
> - https://launchpad.net/bugs/2161402
> - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending
> 
> 
> Notes
> ~~~~~
> - A CVE identifier was requested from MITRE for this vulnerability on
>    2026-10-06. The CVE will be added to this advisory by errata once
>    assigned.
> 
> -- 
> Goutham Pacha Ravi
> OpenStack Vulnerability Management Team
> https://security.openstack.org/vmt.html


Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
