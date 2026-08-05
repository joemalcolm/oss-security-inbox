X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/17
Message-ID: <ab05ce84-4216-464f-9029-c6a0da7c08d8@gmail.com>
Date: Wed, 5 Aug 2026 09:58:06 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: [OSSA-2026-007] OpenStack Keystone: LDAP identity backend does not convert enabled attribute to boolean (CVE-2026-40683)
Content-Type: text/plain; charset=utf-8

Errata 1 for OSSA-2026-007: CVE-2026-40683 has been assigned.

==================================================================================
OSSA-2026-007: LDAP identity backend does not convert enabled attribute 
to boolean
==================================================================================

:Date: April 14, 2026
:CVE: CVE-2026-40683


Affects
~~~~~~~
- Keystone: >=8.0.0 <25.0.1, >=26.0.0 <26.1.1, >=27.0.0 <27.0.1, 
 >=28.0.0 <28.0.1


Description
~~~~~~~~~~~
Benedikt Trefzer and Andrew Bogott independently reported a 
vulnerability in the Keystone LDAP identity backend. When the 
user_enabled_invert configuration option was False (the default), 
Keystone did not correctly interpret the LDAP enabled attribute, causing 
users disabled in LDAP to be treated as enabled and allowed to 
authenticate. Deployments using the LDAP identity backend without 
user_enabled_invert=True or user_enabled_emulation are affected.


Errata
~~~~~~
CVE-2026-40683 has been assigned for this vulnerability.


Patches
~~~~~~~
- https://review.opendev.org/982409 (2024.2/dalmatian)
- https://review.opendev.org/982408 (2025.1/epoxy)
- https://review.opendev.org/982407 (2025.2/flamingo)
- https://review.opendev.org/958205 (2026.1/gazpacho)


Credits
~~~~~~~
- Benedikt Trefzer from Cirrax GmbH (CVE-2026-40683)
- Andrew Bogott from Wikimedia Foundation (CVE-2026-40683)
- Grzegorz Grasza from Red Hat (CVE-2026-40683)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2121152
- https://launchpad.net/bugs/2141713
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-40683


Notes
~~~~~
- To work around this vulnerability, set user_enabled_invert=True and
   use an LDAP attribute with inverted semantics such as nsAccountLock,
   or use user_enabled_emulation with group-based enabled status.
- The fix was merged on the master branch before the stable/2026.1
   branch was cut, so no specific stable/2026.1 patch exists. The fix is
   included in the gazpacho (29.0.0) release.


OSSA History
~~~~~~~~~~~~
- 2026-08-05 - Errata 1
- 2026-04-14 - Original Version

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html


On 4/14/26 9:51 AM, Goutham Pacha Ravi wrote:
> ==================================================================================
> OSSA-2026-007: LDAP identity backend does not convert enabled attribute to boolean
> ==================================================================================
> 
> :Date: April 14, 2026
> :CVE: CVE-2026-pending
> 
> 
> Affects
> ~~~~~~~
> - Keystone: >=8.0.0 <25.0.1, >=26.0.0 <26.1.1, >=27.0.0 <27.0.1, >=28.0.0 <28.0.1
> 
> 
> Description
> ~~~~~~~~~~~
> Benedikt Trefzer and Andrew Bogott independently reported a vulnerability in the Keystone LDAP identity backend. When the user_enabled_invert configuration option was False (the default), Keystone did not correctly interpret the LDAP enabled attribute, causing users disabled in LDAP to be treated as enabled and allowed to authenticate. Deployments using the LDAP identity backend without user_enabled_invert=True or user_enabled_emulation are affected.
> 
> 
> 
> Patches
> ~~~~~~~
> -https://review.opendev.org/982409 (2024.2/dalmatian)
> -https://review.opendev.org/982408 (2025.1/epoxy)
> -https://review.opendev.org/982407 (2025.2/flamingo)
> -https://review.opendev.org/958205 (2026.1/gazpacho)
> 
> 
> Credits
> ~~~~~~~
> - Benedikt Trefzer from Cirrax GmbH (CVE-2026-pending)
> - Andrew Bogott from Wikimedia Foundation (CVE-2026-pending)
> - Grzegorz Grasza from Red Hat (CVE-2026-pending)
> 
> 
> References
> ~~~~~~~~~~
> -https://launchpad.net/bugs/2121152
> -https://launchpad.net/bugs/2141713
> 
> 
> Notes
> ~~~~~
> - To work around this vulnerability, set user_enabled_invert=True and
>    use an LDAP attribute with inverted semantics such as nsAccountLock,
>    or use user_enabled_emulation with group-based enabled status.
> - A CVE request was filed with MITRE on 2026-04-10.
> - The fix was merged on the master branch before the stable/2026.1
>    branch was cut, so no specific stable/2026.1 patch exists. The fix is
>    included in the gazpacho (29.0.0) release.
> 
> 
> --
> Goutham Pacha Ravi (gouthamr)
> OpenStack Vulnerability Management Team
> 
> 


Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
