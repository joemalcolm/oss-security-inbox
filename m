X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/7
Message-ID: <6c2d11c4-d207-4e4f-a3bb-f5bfd647b7ba@jvf.cc>
Date: Thu, 22 Oct 2026 08:52:57 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-048] Ironic: Allows generic node update for maintenance setting (CVE-2026-89419)
Content-Type: text/plain; charset=utf-8

========================================================================
OSSA-2026-048: Ironic allows generic node update for maintenance setting
========================================================================

:Date: October 22, 2026
:CVE: CVE-2026-89419


Affects
~~~~~~~
- Ironic: >=17.0.0 <=29.1.1, >30.0.0 <=32.1.1, >33.0.0 <=35.1.1, >36.0.0 
<=39.0.1


Description
~~~~~~~~~~~
The Metal3.io Security team reported a vulnerability in Ironic's API.
When calling the Node maintenance API at
``/v1/nodes/{ident}/maintenance``, Ironic properly applies the
``baremetal:node:set_maintenance`` and
``baremetal:node:clear_maintenance`` policies.

However, if a user instead calls the more generic Node update API by
sending an HTTP PATCH to ``/v1/nodes/{ident}``, and includes
``maintenance`` or ``maintenance_reason`` in the dictionary, they can
instead trigger the ``baremetal:node:update`` policy. This may lead to
users unexpectedly having access to change the maintenance setting on
a node.

For clouds using default Ironic policy, this means someone with the
member role on the project indicated in ``node.lessee`` can change
maintenance on the node. This is typically restricted only to accounts
with manager or admin roles on lessee accounts. There is no change in
effective default permissions in the case of ``node.owner`` project
members or system-scoped users.



Patches
~~~~~~~
- https://review.opendev.org/1011871 (2024.1/caracal (unmaintained))
- https://review.opendev.org/1011869 (2025.1/epoxy)
- https://review.opendev.org/1011867 (2025.2/flamingo)
- https://review.opendev.org/1011865 (2026.1/gazpacho)
- https://review.opendev.org/1011863 (2026.2/hibiscus)
- https://review.opendev.org/1011861 (2027.1/indri (development))
- https://review.opendev.org/1011875 (Bugfix/37.0)
- https://review.opendev.org/1011873 (Bugfix/38.0)


Credits
~~~~~~~
- Tuomo Tanskanen, Metal3.io Security Team from Ericsson Software 
Technology (CVE-2026-89419)
- Dmitry Tantsur, Metal3.io Security Team from Red Hat (CVE-2026-89419)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2166510
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-89419


Notes
~~~~~
- Patches for unmaintained/2024.1, bugfix/38.0, and bugfix/37.0 will be
   merged to git but no new release will be provided.


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
