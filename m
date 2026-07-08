X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/4
Message-ID: <046ca5c3-8439-4c33-b62b-5e2ce999dc21@jvf.cc>
Date: Wed, 8 Jul 2026 08:09:18 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-026] Ironic: Insufficient Access Controls regarding parent/child nodes
Content-Type: text/plain; charset=utf-8

==================================================================================
OSSA-2026-026: Insufficient Access Controls in Ironic regarding 
Parent/Child Nodes
==================================================================================

:Date: July 08, 2026
:CVE: CVE-2026-44918


Affects
~~~~~~~
- Ironic: >=27.0.0 <29.0.6, >=30.0.0 <32.0.2, >=33.0.0 <35.0.2, >=36.0.0 
<37.0.1


Description
~~~~~~~~~~~
Dmitry Tantsur (Red Hat) and Tuomo Tanskanen (Ericsson Software Technology)
from the Metal3.io Security Team reported a vulnerability in Ironic's
access control code.

This OSSA represents multiple related vulnerabilities in Ironic RBAC. An
authenticated project manager can change the node associated with
Volume Connectors or Volume Target objects, potentially changing the
project permitted to access the object. Volume Connectors
contain secrets in environments configuring boot from volume with iSCSI
volumes. This is tracked as bug #2150256.

Objects reparented in this manner cannot be detected
via inspection of the data. Operators who are concerned they may have
had this occur are encouraged to perform a basic audit of node
configuration, for instance, insuring the expected number of
volume targets, and volume connectors are present.

Additionally, a project manager with the ability to create nodes can use
the UUID of a node not owned by their project as a parent node when creating
a new node. This mismatched child node can then be used to impact operations
on the parent, such as forcing it to power on. This is tracked as bug
#2150450.

Ironic now specifically checks, and requires node parents and children to
have matching ``node.owner`` values. This patch contains an enhancement
to Ironic's upgrade check to detect this mismatched state. Operators can
use the provided ``ironic-status upgrade check`` to identify misconfigured
nodes.



Patches
~~~~~~~
- https://review.opendev.org/c/openstack/ironic/+/996479 (2024.1/caracal 
(unmaintained))
- https://review.opendev.org/c/openstack/ironic/+/996478 (2025.1/epoxy)
- https://review.opendev.org/c/openstack/ironic/+/996476 (2025.2/flamingo)
- https://review.opendev.org/c/openstack/ironic/+/996469 (2026.1/gazpacho)
- https://review.opendev.org/c/openstack/ironic/+/996462 (2026.2/hibiscus)
- https://review.opendev.org/c/openstack/ironic/+/996474 (Bugfix/33.0)
- https://review.opendev.org/c/openstack/ironic/+/996471 (Bugfix/34.0)
- https://review.opendev.org/c/openstack/ironic/+/996464 (Bugfix/37.0)


Credits
~~~~~~~
- Dmitry Tantsur from Red Hat
- Tuomo Tanskanen from Ericsson Software Technology


References
~~~~~~~~~~
- https://bugs.launchpad.net/ironic/+bug/2150256
- https://bugs.launchpad.net/ironic/+bug/2150450
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-44918


Notes
~~~~~
- Volume Targets and Volume Connectors only contain sensitive
   information in environments utilizing boot-from-volume with iSCSI
   volumes.
- These patches also contain hardening logic to prevent this class of
   vulnerability in Port and Portgroup objects. This is a defense in
   depth measure to provide consistent errors at the API level for
   invalid data.
- Branch 2024.1/caracal is unmaintained and patches are provided as a
   courtesy.
- Bugfix branches will recieve patches in git but will not recieve a
   updated release.


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
