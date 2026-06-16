X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/16/10
Message-ID: <3e2632bc-db3f-4b42-a3d4-e8622c12a6fc@jvf.cc>
Date: Tue, 16 Jun 2026 13:05:13 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-023] Ironic: Sensitive properties returned unredacted in POST and PATCH HTTP responses (CVE-2026-54421)
Content-Type: text/plain; charset=utf-8

========================================================================================
OSSA-2026-023: Sensitive properties returned unredacted in POST and 
PATCH HTTP responses
========================================================================================

:Date: June 16, 2026
:CVE: CVE-2026-54421


Affects
~~~~~~~
- Ironic: >=17.0.0 <29.0.6, >=30.0.0 <32.0.2, >=33.0.0 <35.0.2, >=36.0.0 
<37.0.1


Description
~~~~~~~~~~~
Tuomo Tanskanen (Ericsson Software Technology) and Dmitry Tantsur (Red Hat)
of the Metal3.io Security Team discovered a vulnerability in Ironic API RBAC
handling, where a user with a valid token and credentials to send a
POST or PATCH request to ``/v1/volume/targets`` can have potentially
sensitive properties returned in the response unredacted, such as iSCSI
credentials.



Patches
~~~~~~~
- https://review.opendev.org/c/openstack/ironic/+/992335 
(2023.1/antelope (unmaintained))
- https://review.opendev.org/c/openstack/ironic/+/992333 (2024.1/caracal 
(unmaintained))
- https://review.opendev.org/c/openstack/ironic/+/992326 (2025.1/epoxy)
- https://review.opendev.org/c/openstack/ironic/+/992325 (2025.2/flamingo)
- https://review.opendev.org/c/openstack/ironic/+/992321 (2026.1/gazpacho)
- https://review.opendev.org/c/openstack/ironic/+/990430 
(2026.2/hibiscus (development))
- https://review.opendev.org/c/openstack/ironic/+/992323 (Bugfix/33.0)
- https://review.opendev.org/c/openstack/ironic/+/992322 (Bugfix/34.0)


Credits
~~~~~~~
- Tuomo Tanskanen from Ericsson Software Technology
- Dmitry Tantsur from Red Hat


References
~~~~~~~~~~
- https://bugs.launchpad.net/ironic/+bug/2155049
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-54421


Notes
~~~~~
- The vulnerable code path has existed since Ironic 9.0.0 (OpenStack
   Pike), however, this could only be considered an escalation of
   privileges after Ironic 17.0.0 (OpenStack Wallaby), when Ironic
   introduced the ability for project-scoped users to interact via the
   owner/lessee model.
- Branches for 2024.1 (caracal) and 2023.1 (antelope) are unmaintained.
   Patches are provided as a courtesy. Releases 2023.2 (bobcat) and
   2024.2 (dalmatian) are end of life and have not had patches provided.
   See https://releases.openstack.org for more information on supported
   releases.
- Ironic bugfix branch patches will be available in git for interested
   operators. We will not perform an additional release from these
   branches.


Download attachment "OpenPGP_0x6B75D939B424C6D4.asc" of type "application/pgp-keys" (6373 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
