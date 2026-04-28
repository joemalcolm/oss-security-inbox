Received: (qmail 30456 invoked by uid 550); 28 Apr 2026 18:05:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30432 invoked from network); 28 Apr 2026 18:05:43 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1wHmoL-007C43-0i@xenbits.xenproject.org>
Date: Tue, 28 Apr 2026 18:05:29 +0000
Subject: [oss-security] Xen Security Advisory 489 v1 (CVE-2026-23559,CVE-2026-23560,CVE-2026-23561,CVE-2026-23562,CVE-2026-42486)
 - Multiple RBAC issues in XAPI

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

 Xen Security Advisory CVE-2026-23559,CVE-2026-23560,CVE-2026-23561,CVE-2026-23562,CVE-2026-42486 / XSA-489

                     Multiple RBAC issues in XAPI

ISSUE DESCRIPTION
=================

XAPI can configure different users with different roles, using Role
Based Access Control.  For more details, see:

  https://docs.xenserver.com/en-us/xencenter/current-release/rbac-overview.html#rbac-roles

The pool-admin role is fully privileged.  Notably, users with this role
can also SSH into the host as root.

The other administrator roles are pool-operator, vm-power-admin and
vm-admin, each of which are authorised to configure and manage various
aspects of the system.

Some settings are inadequately restricted, and can be set by a lower
privilege of administrator than expected.

 * CVE-2026-23559: A vm-admin can set VBD.other_config:backend-local and
   turn arbitrary files in dom0 into VDIs (virtual disks) and give said
   disks to a VM they control.  This is an arbitrary read and/or modify
   of files in dom0.

 * CVE-2026-23560: A vm-admin can set VM.other-config:is_system_domain
   and mark a VM as a system domain.  System domains are ignored and
   left running during certain other host/pool operations, and may be
   hidden from view in tooling.

 * CVE-2026-23561: A vm-admin can set VM.other_config:storage_driver_domain
   and mark a VM as the storage domain for a particular host storage
   connection (PBD). Shutting down the VM can cause the PBD to be
   erroneously marked as unplugged when it is not.

 * CVE-2026-23562: Configuration of PCI passthrough is normally
   restricted to the pool-admin role.  However one API was missing this
   check, allowing a vm-admin access to unintended host hardware.

 * CVE-2026-42486: A vm-admin can set the VM.platform:hvm_serial
   parameter, which should be restricted to the pool-admin role, as it
   can allow arbitrary dom0 file write.

IMPACT
======

An authenticated user already granted one of pool-operator,
vm-power-admin or vm-admin can escalate their privilege to pool-admin.

VULNERABLE SYSTEMS
==================

Systems running all versions of XAPI are vulnerable.

The vulnerability is only exposed if RBAC is configured for the pool,
and certain users are assigned the not-fully-privileged administrator
roles.

MITIGATION
==========

Disable any users (RBAC subjects) which have been configured with the
vm-admin, vm-power-admin or pool-operator role.

RESOLUTION
==========

Fixes can be found in the following pull requests:

  https://github.com/xapi-project/xen-api/pull/7031
  https://github.com/xapi-project/xen-api/pull/7032
  https://github.com/xapi-project/xen-api/pull/7033
  https://github.com/xapi-project/xen-api/pull/7039

NOTE REGARDING LACK OF EMBARGO
==============================

These issues were disclosed in public.

The researcher claimed 89 vulnerabilities.  Analysis by the XAPI team
concluded that only 5 were real vulnerabilities, with most being a
failure to read the RBAC documentation, and several appearing to be AI
hallucinations.

The researcher also took active steps to prevent coordinated disclosure.
Due to acting in bad faith, they are explicitly not credited.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmnw9tkMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZgLUIAMgzABaje/RPPO7lwrp1ERZQhtqy/SPG2dYxE75a
M6bytAbpj4Y9lgh8IB4QLXDSEfSgjWKxzSGcUi3DpvJI3uiQmSqvAE5XnfRfVHT/
h1eo0vQ3v8yz5++iiOl2Cq9Qvg9cvMFEXYz8X21+u63KlpOnXjUZ7VpYeRdrbCYs
n6Id6QU4D/y+3EZne5Xs0JY6Dn8J8SM3ejNjP6OmMFJMoKgSf1nXarQhNcmgvR0G
a+PRjUWgHAHqfdzjJsyBZLyNwPAQgUM2aDfPqGh8vr9YlE6sWwlxYEeSIGsWzAHu
oE5iWmYq5O4FUTgf+1ye8PUNbGyzDsJCeGfWeAXvGobQ6aQ=
=OEJh
-----END PGP SIGNATURE-----

--=separator--
