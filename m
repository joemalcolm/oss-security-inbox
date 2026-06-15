X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/15/9
Message-ID: <36269ce7-d839-4db7-93e8-cb585b05f9fe@jvf.cc>
Date: Mon, 15 Jun 2026 13:33:04 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-017] Errata 1: Ironic: Script injection during node boot via linux command line override (CVE-2026-46447)
Content-Type: text/plain; charset=utf-8

================================================================================
OSSA-2026-017: Script injection during node boot via linux command line 
override
================================================================================

:Date: June 03, 2026
:CVE: CVE-2026-46447


Affects
~~~~~~~
- Ironic: >=17.0.0 <26.1.7, >=27.0.0 <29.0.6, >=30.0.0 <32.0.2, >=33.0.0 
<35.0.2


Description
~~~~~~~~~~~
Dmitry Tantsur (Red Hat) and Tuomo Tanskanen (Ericsson Software 
Technology) from the Metal3.io Security Team reported a vulnerability in 
Ironic's kernel command line override code. A user with access to add or 
modify ``node.driver_info`` or ``node.instance_info`` can create a 
crafted value to enable iPXE script execution during the boot process.



Errata
~~~~~~
The initial patches issued to address the vulnerability would erroneously
reject some valid kernel parameters, particularly when URL encoded. These
bugs had no detrimental security impact, but may have caused unexpected
failures. We apologize for the inconvienience.

Impacted operators should also apply the patches below labelled **errata 
1**.
For a more rapid resolution of failures, operators can set
``CONF.conductor.disable_kernel_parameter_parsing`` to false until they can
apply the provided patches.

**Both the patches labelled original and the patches labelled errata 1 
should be
applied for proper behavior.**



Patches
~~~~~~~
- **original** https://review.opendev.org/c/openstack/ironic/+/991387 
(2023.1/antelope (unmaintained))
- **errata 1** https://review.opendev.org/c/openstack/ironic/+/992661 
(2023.1/antelope (unmaintained))
- **original** https://review.opendev.org/c/openstack/ironic/+/991383 
(2024.1/caracal (unmaintained))
- **errata 1** https://review.opendev.org/c/openstack/ironic/+/992659 
(2024.1/caracal (unmaintained))
- **original** https://review.opendev.org/c/openstack/ironic/+/991380 
(2025.1/epoxy)
- **errata 1** https://review.opendev.org/c/openstack/ironic/+/992345 
(2025.1/epoxy)
- **original** https://review.opendev.org/c/openstack/ironic/+/991377 
(2025.2/flamingo)
- **errata 1** https://review.opendev.org/c/openstack/ironic/+/992341 
(2025.2/flamingo)
- **original** https://review.opendev.org/c/openstack/ironic/+/991374 
(2026.1/gazpacho)
- **errata 1** https://review.opendev.org/c/openstack/ironic/+/992340 
(2026.1/gazpacho)
- **original** https://review.opendev.org/c/openstack/ironic/+/991365 
(2026.2/hibscus (development))
- **errata 1** https://review.opendev.org/c/openstack/ironic/+/992025 
(2026.2/hibscus (development))
- **original** https://review.opendev.org/c/openstack/ironic/+/991371 
(Bugfix/33.0)
- **errata 1** https://review.opendev.org/c/openstack/ironic/+/992368 
(Bugfix/33.0)
- **original** https://review.opendev.org/c/openstack/ironic/+/991368 
(Bugfix/34.0)
- **errata 1** https://review.opendev.org/c/openstack/ironic/+/992367 
(Bugfix/34.0)


Credits
~~~~~~~
- Dmitry Tantsur from Red Hat
- Tuomo Tanskanen from Ericsson Software Technology


References
~~~~~~~~~~
- https://bugs.launchpad.net/ironic/+bug/2150624
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-46447


Notes
~~~~~
- Releases 2024.1 (caracal) and 2023.1 (antelope) are unmaintained.
   Patches are provided as a courtesy. Releases 2023.2 (bobcat) and
   2024.2 (dalmation) are end of life and have not had patches provided.
   See https://releases.openstack.org for more information on supported
   releases.
- Ironic bugfix branch patches will be available in git for interested
   operators. We will not perform an additional release from these
   branches.
- This fix removes the ability to put some valid -- but unlikely --
   special characters into kernel command line overrides. There is an
   escape hatch for impacted clouds; setting
   ``CONF.conductor.disable_kernel_parameter_parsing`` to true will
   restrict Ironic to only blocking the most dangerous, nonsensical
   special characters at the cost of being less security hardened against
   future attacks.


OSSA History
~~~~~~~~~~~~
- 2026-06-15 - Errata 1
- 2026-06-03 - Original Version

Download attachment "OpenPGP_0x6B75D939B424C6D4.asc" of type "application/pgp-keys" (6373 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
