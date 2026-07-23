X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/23/4
Message-ID: <5ed2091d-fb89-42ff-876f-0b4ebd680718@gmail.com>
Date: Thu, 23 Jul 2026 07:59:29 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-028] OpenStack Ironic Python Agent: Credential extraction via malicious container (CVE-2026-54422)
Content-Type: text/plain; charset=utf-8

=====================================================================================
OSSA-2026-028: Credential extraction from Ironic Python Agent via 
malicious container
=====================================================================================

:Date: July 23, 2026
:CVE: CVE-2026-54422


Affects
~~~~~~~
- Ironic-python-agent: >=10.2.0 <10.2.3, >=11.0.0 <11.2.1, >=11.3.0 <11.5.1


Description
~~~~~~~~~~~
Yuliang Xiao reported a vulnerability in Ironic Python Agent's bootc
container deployment support. A malicious container can extract the
secrets used to fetch from the OCI registry on deployment.

Operators can fix this issue by applying the provided patches or completely
disabling the bootc deploy_interface on their Ironic conductors.

Any Ironic user with the ability to deploy arbitrary containers from the
bootc deploy_interface can exploit this.


Patches
~~~~~~~
- https://review.opendev.org/998479 (2026.2/hibiscus (development))
- https://review.opendev.org/998481 (2026.1/gazpacho)
- https://review.opendev.org/998484 (2025.2/flamingo)
- https://review.opendev.org/998485 (2025.1/epoxy)
- https://review.opendev.org/998480 (bugfix/11.6)
- https://review.opendev.org/998493 (bugfix/11.4)
- https://review.opendev.org/998494 (bugfix/11.3)


Credits
~~~~~~~
- Yuliang Xiao


References
~~~~~~~~~~
- https://launchpad.net/bugs/2155826
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-54422


Notes
~~~~~
- Ironic Python Agent bugfix branch patches will be available in git for
   interested operators. We will not perform an additional release from
   these branches.

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--- END BODY ---

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
