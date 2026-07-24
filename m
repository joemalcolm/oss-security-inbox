X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/26
Message-ID: <5634d9bb-f1be-4307-8298-f58d15cbf2dd@gmail.com>
Date: Fri, 24 Jul 2026 10:27:00 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: [OSSA-2026-027] OpenStack Ironic Python Agent: Command execution via unsanitized config (CVE-2026-66138)
Content-Type: text/plain; charset=utf-8

=======================================================
OSSA-2026-027: Command execution via unsanitized config
=======================================================

:Date: July 23, 2026
:CVE: CVE-2026-66138


Affects
~~~~~~~
- Ironic-python-agent: >=6.0.0 <10.2.3, >=11.0.0 <11.2.1, >=11.3.0 
<11.5.1, ==11.6.0


Description
~~~~~~~~~~~
Dmitry Tantsur (Red Hat) and Tuomo Tanskanen (Ericsson Software Technology)
from the Metal3.io Security Team reported a vulnerability in
Ironic-Python-Agent's (IPAs) time syncing code.

The value of the ntp_server configuration option is inserted into a shell
command without sanitization. This command is run as root very early in the
IPA startup flow, allowing an attacker to run arbitrary commands as root.

This value can be set in three ways; directly in an operator-created 
ramdisk,
set via kernel command line using Ironic, or passing the parameters via mDNS
responder for mDNS enabled installation. For the most common, and highest
security risk case, this means a Manager role associated with the 
project set
as ``node.owner`` may be able to trigger this vulnerability.



Errata
~~~~~~
CVE-2026-66138 has been assigned for this vulnerability.



Patches
~~~~~~~
- https://review.opendev.org/998492 (2023.1/antelope (unmaintained))
- https://review.opendev.org/998491 (2024.1/caracal (unmaintained))
- https://review.opendev.org/998490 (2025.1/epoxy)
- https://review.opendev.org/998489 (2025.2/flamingo)
- https://review.opendev.org/998488 (2026.1/gazpacho)
- https://review.opendev.org/998486 (2026.2/hibiscus (development))
- https://review.opendev.org/998483 (Bugfix/11.3)
- https://review.opendev.org/998482 (Bugfix/11.4)
- https://review.opendev.org/998487 (Bugfix/11.6)


Credits
~~~~~~~
- Dmitry Tantsur from Red Hat
- Tuomo Tanskanen from Ericsson Software Technology


References
~~~~~~~~~~
- https://launchpad.net/bugs/2160050
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-66138


Notes
~~~~~
- Branches 2024.1/caracal and 2023.1/antelope are unmaintained and
   patches are provided as a courtesy.
- Bugfix branches will receive patches in git but will not receive an
   updated release.
- While root access to a node running an Ironic workflow has security
   implications for that specific node, there is no known method for
   turning node ramdisk shell access into a full compromise of the Ironic
   service.


OSSA History
~~~~~~~~~~~~
- 2026-07-24 - Errata 1
- 2026-07-23 - Original Version

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

On 7/23/26 7:59 AM, Goutham Pacha Ravi wrote:
> =======================================================
> OSSA-2026-027: Command execution via unsanitized config
> =======================================================
> 
> :Date: July 23, 2026
> :CVE: CVE-2026-pending
> 
> 
> Affects
> ~~~~~~~
> - Ironic-python-agent: >=6.0.0 <10.2.3, >=11.0.0 <11.2.1, >=11.3.0 
> <11.5.1, ==11.6.0
> 
> 
> Description
> ~~~~~~~~~~~
> Dmitry Tantsur (Red Hat) and Tuomo Tanskanen (Ericsson Software Technology)
> from the Metal3.io Security Team reported a vulnerability in
> Ironic-Python-Agent's (IPAs) time syncing code.
> 
> The value of the ntp_server configuration option is inserted into a shell
> command without sanitization. This command is run as root very early in the
> IPA startup flow, allowing an attacker to run arbitrary commands as root.
> 
> This value can be set in three ways; directly in an operator-created 
> ramdisk,
> set via kernel command line using Ironic, or passing the parameters via 
> mDNS
> responder for mDNS enabled installation. For the most common, and highest
> security risk case, this means a Manager role associated with the 
> project set
> as ``node.owner`` may be able to trigger this vulnerability.
> 
> 
> Patches
> ~~~~~~~
> - https://review.opendev.org/998486 (2026.2/hibiscus (development))
> - https://review.opendev.org/998488 (2026.1/gazpacho)
> - https://review.opendev.org/998489 (2025.2/flamingo)
> - https://review.opendev.org/998490 (2025.1/epoxy)
> - https://review.opendev.org/998491 (2024.1/caracal (unmaintained))
> - https://review.opendev.org/998492 (2023.1/antelope (unmaintained))
> - https://review.opendev.org/998487 (bugfix/11.6)
> - https://review.opendev.org/998482 (bugfix/11.4)
> - https://review.opendev.org/998483 (bugfix/11.3)
> 
> 
> Credits
> ~~~~~~~
> - Dmitry Tantsur from Red Hat
> - Tuomo Tanskanen from Ericsson Software Technology
> 
> 
> References
> ~~~~~~~~~~
> - https://launchpad.net/bugs/2160050
> - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending
> 
> 
> Notes
> ~~~~~
> - A CVE assignment is pending from MITRE. This advisory will be updated
>    when the CVE is assigned.
> - Branches 2024.1/caracal and 2023.1/antelope are unmaintained and
>    patches are provided as a courtesy.
> - Bugfix branches will receive patches in git but will not receive an
>    updated release.
> - While root access to a node running an Ironic workflow has security
>    implications for that specific node, there is no known method for
>    turning node ramdisk shell access into a full compromise of the Ironic
>    service.
> 
> -- 
> Goutham Pacha Ravi
> OpenStack Vulnerability Management Team
> https://security.openstack.org/vmt.html


Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
