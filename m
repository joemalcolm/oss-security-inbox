X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/18
Message-ID: <8cc7b627-5c98-4c71-b5ea-ba62ba727e11@gmail.com>
Date: Wed, 5 Aug 2026 09:59:18 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: [OSSA-2026-030] OpenStack Swift: S3API header authorization bypass (CVE-2026-71191, CVE-2026-71192)
Content-Type: text/plain; charset=utf-8

Errata 1 for OSSA-2026-030: CVE-2026-71191 and CVE-2026-71192 have been 
assigned.

======================================================
OSSA-2026-030: Swift S3API header authorization bypass
======================================================

:Date: July 28, 2026
:CVE: CVE-2026-71191,
       CVE-2026-71192


Affects
~~~~~~~
- Swift: >=2.18.0 <2.35.4, >=2.36.0 <2.36.3, >=2.37.0 <2.37.3, ==2.38.0


Description
~~~~~~~~~~~
Christian Schwede from NVIDIA reported two authorization bypass 
vulnerabilities in Swift's S3API middleware. Insufficient validation of 
request headers allows an attacker to copy and read objects belonging to 
other tenants. The first issue affects the default ``s3_acl=false`` 
configuration; the second affects deployments with ``s3_acl=true``. Both 
require the attacker to know the target container and object names. All 
deployments using the S3API middleware with versions between 2.18.0 and 
the fixed releases listed below are affected.


Errata
~~~~~~
CVE-2026-71191 and CVE-2026-71192 have been assigned for these 
vulnerabilities.


Patches
~~~~~~~
- https://review.opendev.org/998948 (2025.1/epoxy)
- https://review.opendev.org/998949 (2025.1/epoxy)
- https://review.opendev.org/998946 (2025.2/flamingo)
- https://review.opendev.org/998947 (2025.2/flamingo)
- https://review.opendev.org/998944 (2026.1/gazpacho)
- https://review.opendev.org/998945 (2026.1/gazpacho)
- https://review.opendev.org/998942 (2026.2/hibiscus (development))
- https://review.opendev.org/998943 (2026.2/hibiscus (development))


Credits
~~~~~~~
- Christian Schwede from NVIDIA


References
~~~~~~~~~~
- https://launchpad.net/bugs/2158733
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-71191
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-71192


OSSA History
~~~~~~~~~~~~
- 2026-08-05 - Errata 1
- 2026-07-28 - Original Version

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html



On 7/28/26 8:27 AM, Goutham Pacha Ravi wrote:
> ======================================================
> OSSA-2026-030: Swift S3API header authorization bypass
> ======================================================
> 
> :Date: July 28, 2026
> :CVE: CVE-2026-pending,
>        CVE-2026-pending
> 
> 
> Affects
> ~~~~~~~
> - Swift: >=2.18.0 <2.35.4, >=2.36.0 <2.36.3, >=2.37.0 <2.37.3, ==2.38.0
> 
> 
> Description
> ~~~~~~~~~~~
> Christian Schwede from NVIDIA reported two authorization bypass 
> vulnerabilities in Swift's S3API middleware. Insufficient validation of 
> request headers allows an attacker to copy and read objects belonging to 
> other tenants. The first issue affects the default ``s3_acl=false`` 
> configuration; the second affects deployments with ``s3_acl=true``. Both 
> require the attacker to know the target container and object names. All 
> deployments using the S3API middleware with versions between 2.18.0 and 
> the fixed releases listed below are affected.
> 
> 
> 
> Patches
> ~~~~~~~
> - https://review.opendev.org/998948 (2025.1/epoxy)
> - https://review.opendev.org/998949 (2025.1/epoxy)
> - https://review.opendev.org/998946 (2025.2/flamingo)
> - https://review.opendev.org/998947 (2025.2/flamingo)
> - https://review.opendev.org/998944 (2026.1/gazpacho)
> - https://review.opendev.org/998945 (2026.1/gazpacho)
> - https://review.opendev.org/998942 (2026.2/hibiscus (development))
> - https://review.opendev.org/998943 (2026.2/hibiscus (development))
> 
> 
> Credits
> ~~~~~~~
> - Christian Schwede from NVIDIA
> 
> 
> References
> ~~~~~~~~~~
> - https://launchpad.net/bugs/2158733
> - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending
> - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending
> 
> -- 
> Goutham Pacha Ravi
> OpenStack Vulnerability Management Team
> https://security.openstack.org/vmt.html


Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
