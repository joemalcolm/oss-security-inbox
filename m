X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/15
Message-Id: <E1wogYO-003DhI-0o@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:00 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 499 v2 (CVE-2026-62426,CVE-2026-62427) - sysctl and platform-op locks open to abuse
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

     Xen Security Advisory CVE-2026-62426,CVE-2026-62427 / XSA-499
                               version 2

               sysctl and platform-op locks open to abuse

UPDATES IN VERSION 2
====================

Add further tags to patches.

Public release.

ISSUE DESCRIPTION
=================

To manage the system, sysctl and platform operations are used by the
control domain or a possible Xenstore domain.  Some of these operations
may not be executed in parallel, so a system-wide lock each is used.
The way those locks are acquired is, however, not providing any fairness.
Furthermore, with XSM/Flask in use, the lock acquire will, for some
operations, occur ahead of any permission checking.

The sysctl issue is CVE-2026-62426.

The platform-op issue is CVE-2026-62427.

IMPACT
======

A less privileged entity may stall an equally or more privileged entity,
potentially leading to a Denial od Service (DoS) of up to the entire
host.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.0 onwards are vulnerable.  Earlier versions use
a different locking operation, but may also be vulnerable.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate set of attached patches resolves this issue.

NOTE: The patches include an adjustment to the default Flask policy.  When
custom policies are in use, a respective change will need making there.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa499/xsa499-?.patch         xen-unstable - Xen 4.21.x
xsa499/xsa499-4.20-?.patch    Xen 4.20.x - Xen 4.19.x
xsa499/xsa499-4.18-?.patch    Xen 4.18.x
xsa499/xsa499-4.17-?.patch    Xen 4.17.x

$ sha256sum xsa499*/*
1b716186d37cb6be7b2917bc4801a5d431111f6a01f6e710e2899b6fbf91d747  xsa499/xsa499-1.patch
7789699993f993aa0f118437b9a18c2207cf29491fa08f21e029aa4293698d38  xsa499/xsa499-2.patch
4860a286a7161a407a7e7dc95ecb04a453847295ca73f91f3bd07c3e9e94b7fe  xsa499/xsa499-3.patch
fd59436b871caad09017da250996968797ada23223b1e76f9a2e80ae814d63ca  xsa499/xsa499-4.17-1.patch
9f83e4866fd20a3e45ecf40a80898446d243444fdf4c17eb695ff7f3d3e9f816  xsa499/xsa499-4.17-2.patch
e7e4fcb7502deb605a854ce451403237ea295394dc30f771001680cc3aaa8f9e  xsa499/xsa499-4.17-3.patch
3a979d5c59d690313ec9c3d82d8859dadd6d106296cbf6fe75ef9b42f2626bb5  xsa499/xsa499-4.17-4.patch
d2b3bcad9eb0d82f16befff35ef8fa0d8ed6d06b7e7e2c360003f1eee14d26b2  xsa499/xsa499-4.17-5.patch
ac1f4d1935dc7546c32e5b9c42ebd08d71ca232e559a7021e3ed685c0973675e  xsa499/xsa499-4.17-6.patch
143a9b46b3edf689e8b75fb87d1e15b0f0b96baf48547f6d77c00ba5e90ea5ac  xsa499/xsa499-4.17-7.patch
cd51ddc70ac765ef00a404d3a21c04a0e234ebca1904159820504e10f70e3812  xsa499/xsa499-4.18-1.patch
32f7827da6a6cdff848a1b620dd1a4d4861008f53d31050c6cde1d353794d22f  xsa499/xsa499-4.18-2.patch
3ed288dd99051ebb014cf1cd124d5ed0837935bb0d56963f54699a9e3a966c4e  xsa499/xsa499-4.18-3.patch
86fecda24801913f408f86db0b02d0017e870fa95e6edfe5d414343c89b29b37  xsa499/xsa499-4.18-4.patch
055c9114e0c1e789ee510dfb739bf8067a7acbdad6b6edaf2c0e7ed3daac2b81  xsa499/xsa499-4.18-5.patch
211b7410562f438e82266d3101beaef32d66c54b4681a370dd3e47abeec7c5c5  xsa499/xsa499-4.18-6.patch
a0849d860536a199ebeabb6199012d9eae70ee2ed41573765af50aec7b7e7f85  xsa499/xsa499-4.18-7.patch
48b96df5981193f182eda567ad65f1343718656a36ea1ef2d24bdc534ea4ead1  xsa499/xsa499-4.20-1.patch
3e9a315184f64d41011721b2f09275fcc6969d46be3c6f6b788b65fe78c1a0a8  xsa499/xsa499-4.20-2.patch
cf66937eecf0b8a559e60553c21de0e3767270df022c7098d7dd94a46c5ad176  xsa499/xsa499-4.20-3.patch
8932a1480b7431a0ebb048312dda49d5b7d06a5d2b57efb04df0b90bc81e95be  xsa499/xsa499-4.20-4.patch
6777a824bc0248f8e12a71f87b60a3209a7a74a08fe7e072d26f80095d188a01  xsa499/xsa499-4.20-5.patch
3ab8c66b133d2b942f7caad0251d427076ad2ef38bcbf6672a937c1406f098ac  xsa499/xsa499-4.20-6.patch
1254cc886eb62d65624bcc417701c119e02cc35d31f62e3dda1bda062e170446  xsa499/xsa499-4.20-7.patch
70c315beca0afa411c9e31117d8e0b22b36b5cd70e8d9d2243f5501167a2c631  xsa499/xsa499-4.patch
d0ff37c4807445bd5146057ddaed31d7ce5a0fe6abf413a04f4bceca8419baeb  xsa499/xsa499-5.patch
961d31a715ae2c8dd25b74243a6c759ce8c43409c4156ae6bbdcf3faac03f592  xsa499/xsa499-6.patch
60cb3b1e4beef97d633a0156feb0f4f10ac8d21c54152969f5b7a77ecc4a24d3  xsa499/xsa499-7.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomq8MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ9AcH/3XOTFbTvmwW48Q6nVkwvys5fiU2esrkFOTK96nn
p55QQoVVjebet7N+eRtezkjfHGCqphGOuHcAJ0uMlNNgUfhXNxxu6qaqMHX5h29P
DqQKZzOKuQM1frcyupJdhi8dbNxan1pXMv6rJAcWpmBoPEt9e+qwpnWtBX/HPH3b
66cQwLhmenlqwZak7E0bsLFw1A6WUXs1VS4xeiOE3Cj91F5hPUvqkZGI0pNbNAIn
6copsM0UAcTkwGrwIvKuN5b3BqFmaCWvGBfqsuNpj5MnJddigV68UeylMepFjoDH
Urn2qiOTcJKxdFt/AUX57AqiBF2MtDbi49RLLxsTCJvYvFM=
=R0It
-----END PGP SIGNATURE-----

Download attachment "xsa499/xsa499-1.patch" of type "application/octet-stream" (2863 bytes)

Download attachment "xsa499/xsa499-2.patch" of type "application/octet-stream" (2553 bytes)

Download attachment "xsa499/xsa499-3.patch" of type "application/octet-stream" (4020 bytes)

Download attachment "xsa499/xsa499-4.17-1.patch" of type "application/octet-stream" (2337 bytes)

Download attachment "xsa499/xsa499-4.17-2.patch" of type "application/octet-stream" (2659 bytes)

Download attachment "xsa499/xsa499-4.17-3.patch" of type "application/octet-stream" (3944 bytes)

Download attachment "xsa499/xsa499-4.17-4.patch" of type "application/octet-stream" (1893 bytes)

Download attachment "xsa499/xsa499-4.17-5.patch" of type "application/octet-stream" (3947 bytes)

Download attachment "xsa499/xsa499-4.17-6.patch" of type "application/octet-stream" (6294 bytes)

Download attachment "xsa499/xsa499-4.17-7.patch" of type "application/octet-stream" (4987 bytes)

Download attachment "xsa499/xsa499-4.18-1.patch" of type "application/octet-stream" (2337 bytes)

Download attachment "xsa499/xsa499-4.18-2.patch" of type "application/octet-stream" (2659 bytes)

Download attachment "xsa499/xsa499-4.18-3.patch" of type "application/octet-stream" (3944 bytes)

Download attachment "xsa499/xsa499-4.18-4.patch" of type "application/octet-stream" (1893 bytes)

Download attachment "xsa499/xsa499-4.18-5.patch" of type "application/octet-stream" (3947 bytes)

Download attachment "xsa499/xsa499-4.18-6.patch" of type "application/octet-stream" (6299 bytes)

Download attachment "xsa499/xsa499-4.18-7.patch" of type "application/octet-stream" (4987 bytes)

Download attachment "xsa499/xsa499-4.20-1.patch" of type "application/octet-stream" (2320 bytes)

Download attachment "xsa499/xsa499-4.20-2.patch" of type "application/octet-stream" (2659 bytes)

Download attachment "xsa499/xsa499-4.20-3.patch" of type "application/octet-stream" (3944 bytes)

Download attachment "xsa499/xsa499-4.20-4.patch" of type "application/octet-stream" (1893 bytes)

Download attachment "xsa499/xsa499-4.20-5.patch" of type "application/octet-stream" (3947 bytes)

Download attachment "xsa499/xsa499-4.20-6.patch" of type "application/octet-stream" (6303 bytes)

Download attachment "xsa499/xsa499-4.20-7.patch" of type "application/octet-stream" (4987 bytes)

Download attachment "xsa499/xsa499-4.patch" of type "application/octet-stream" (1782 bytes)

Download attachment "xsa499/xsa499-5.patch" of type "application/octet-stream" (3697 bytes)

Download attachment "xsa499/xsa499-6.patch" of type "application/octet-stream" (6412 bytes)

Download attachment "xsa499/xsa499-7.patch" of type "application/octet-stream" (5206 bytes)
