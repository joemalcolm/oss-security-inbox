X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/12
Message-Id: <E1wjbt4-001ipR-2I@xenbits.xenproject.org>
Date: Tue, 14 Jul 2026 12:05:22 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 498 v2 (CVE-2026-42491) - XAPI: Missing TLS verification in some SDKs
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-42491 / XSA-498
                               version 2

              XAPI: Missing TLS verification in some SDKs

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

XAPI provides SDKs; bindings for the API in various programming
languages.  These are artefacts from a build of XAPI, intended for
integration into 3rd party products.

In all SDKs, there is a main RPC connection to the XAPI host.  TLS for
this connection is verified properly, or delegated to the 3rd party
logic, in all language bindings.

There are also certain HTTP handlers which open a separate connection to
the XAPI host.  For two of the language bindings only (C# and
Powershell), TLS verification is improperly implemented on these
connections.

IMPACT
======

A malicious actor able to perform a Man-in-the-Middle attack on the
network communication between a program using one of the affected SDKs
and a host running XAPI may be able to intercept the communication and:

 * Steal a session token, allowing for hijack of the administrative
   session, or
 * Read or tamper with exported/imported disk images, host backups, RRD
   (performance) data and patches/updates in transit.

VULNERABLE SYSTEMS
==================

This issues has been present in the XAPI C# and Powershell SDKs since
TLS support was added.

MITIGATION
==========

There are no known mitigations.

CREDITS
=======

This issue was discovered by the Veeam Team.

RESOLUTION
==========

Applying the attached patch to XAPI master will generate fixed SDKs.
3rd party programs using vulnerable SDKs must be rebuilt against the
fixed SDKs.

xsa498.patch           XAPI master

$ sha256sum xsa498*
f2db9e16561edc59b920e0ed95cce3a19147abc6eb2b8500bd73b87dc285d4ba  xsa498.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches and/or mitigations described above (or
others which are substantially similar) is permitted during the
embargo, even on public-facing systems with untrusted guest users and
administrators.

But: Distribution of updated software is prohibited (except to other
members of the predisclosure list).

Predisclosure list members who wish to deploy significantly different
patches and/or mitigations, please contact the Xen Project Security
Team.


(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpWJfMMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZgYEH/jqpKmvSl2oVn5v8Wdk3KZfOxW67ejyA5NpUyW1i
MOwFQyA7gCrxwDaHN62u0aabs4kJNErOzeuVPCtElIyQN+bpB/5lR6nxnxQaQM8K
Ddhtg6rFQfP121+XGYjtbUOr5fvDkLu290XExow5XWKNmk3P1B3HKImPtkmzGpN6
z9FceAqzGX9N7eCPw3waMGsy50/n8L9cLvkyjPHpfb5beTq0AVQFJVD38P8humk0
xY9r+Iq0aGCxyyEZkHJsDaQfuKo3OYGPVoEEB5YiXPS+1P72lRrwkSFL+qJqAPLn
pDAqAGx1wRYvM6zITDnqbwnBYQ7je3UNZlMVEJj2dHWDOLs=
=3Knk
-----END PGP SIGNATURE-----

Download attachment "xsa498.patch" of type "application/octet-stream" (44706 bytes)
