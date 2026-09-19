X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/19/2
Message-ID: <20260919035112.GA22844@openwall.com>
Date: Sat, 19 Sep 2026 05:51:12 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: Bernard Quatermass <bernardq@...m.org>
Subject: Exim Security Release 4.100.1
Content-Type: text/plain; charset=utf-8

Hi,

Bernard Quatermass kindly brought this Exim release pre-announcement to
the distros list (thanks!), but seems to have failed to make the required
oss-security posting despite of the release having been made.  So I am
doing it now.

What follows below is copy-paste from:

https://lists.exim.org/lurker/message/20260918.121220.0f87338e.en.html

Alexander

Author: Bernard Quatermass via Exim-announce
Date: 2026-09-18 14:12 +200
To: Exim Announcements, exim-users
Subject: [exim] Exim Security Release - 4.100.1

Dear Exim users,


The Exim maintainers are releasing a security fix for four security issues.


  * GCVE-25-2026-09-50-1
  * GCVE-25-2026-09-51-1
  * GCVE-25-2026-09-55-1
  * GCVE-25-2026-09-56-1


----

Title: Exim Security Advisory for EXIM-Security-2026-09-12.1 / GCVE-25-2026-09-50-1
Announced: 2026-09-18
Affects: Exim 4.83 up to and including 4.100
Corrected: Exim 4.100.1

Exim Security Vulnerability: EXIM-Security-2026-09-12.1
=======================================================

Identifier:   EXIM-Security-2026-09-12.1 (GCVE-25-2026-09-50-1)
Area:         Proxy Protocol, v1
Type:         Out-of-bounds write; heap corruption
Severity:     High
Credit:       The unnamed and uncredited authors whose works
               were ingested as the training corpus

Timeline
--------

   2026-08-25 18:41 UTC Report received
   2026-08-27 15:57 UTC Fix drafted
   2026-09-11 18:00 UTC GCVEs assigned by [GNA](https://gcve.eu/gna/25/)
   2026-09-15 12:00 UTC Fix branch and tag exim-4.100.1 pushed to exim-distros
   2026-09-18 12:00 UTC Public release

Vulnerability Summary
---------------------

A remote attacker can cause a read of up to about 230 bytes past the end
of a heap allocation, and a single NUL byte write at the end of that read.

Affected Systems
----------------

- Exim versions from 4.83 (2014) up to and including 4.100 are affected.
- The installation must be built and configured for Proxy-Protocol use.
- A configured proxy must be be buggy or compromised

Mitigation
----------

(None)

Resolution
----------

The issue is resolved in Exim version 4.100.1. All users of affected
versions are strongly encouraged to upgrade.

The fix properly sizes a data read.

----

Title: Exim Security Advisory for EXIM-Security-2026-09-12.3 / GCVE-25-2026-09-51-1
Announced: 2026-09-18
Affects: Exim 4.98 up to and including 4.100
Corrected: Exim 4.100.1

Exim Security Vulnerability: EXIM-Security-2026-09-12.3
=======================================================

Identifier:   EXIM-Security-2026-09-12.3 (GCVE-25-2026-09-51-1)
Area:         gnutls, tls-on-connect
Type:         Use after free
Severity:     Low
Credit:       The unnamed and uncredited authors whose works
               were ingested as the training corpus

Timeline
--------

   2026-08-25 18:41 UTC Report received
   2026-08-27 14:20 UTC Fix drafted
   2026-09-11 18:00 UTC GCVEs assigned by [GNA](https://gcve.eu/gna/25/)
   2026-09-15 12:00 UTC Fix branch and tag exim-4.100.1 pushed to exim-distros
   2026-09-18 12:00 UTC Public release

Vulnerability Summary
---------------------

A remote attacker can cause a use-after-free, potentially crashing a
receive process.

Affected Systems
----------------

- Exim versions from 4.98 up to and including 4.100 are affected.
- The installation must be built with GnuTLS 3.6.4 or later, and configured
   to accept TLS-on-connect.
- The configuration must enable the tls_early_banner_hosts option
   (a non-default setting).

Mitigation
----------

- Disable the tls_early_banner_hosts feature option.

Resolution
----------

The issue is resolved in Exim version 4.100.1. Users of affected versions are
encouraged to upgrade.

The fix changes the control flow to avoid the data use.

----

Title: Exim Security Advisory for EXIM-Security-2026-09-12.2 / GCVE-25-2026-09-55-1
Announced: 2026-09-18
Affects: Exim 4.83 up to and including 4.100
Corrected: Exim 4.100.1
Reporter ref: WT-2026-0149

Exim Security Vulnerability: EXIM-Security-2026-09-12.2
=======================================================

Identifier:   EXIM-Security-2026-09-12.2 (GCVE-25-2026-09-55-1)
Area:         Proxy Protocol, v2
Type:         Use of uninitialised data
Severity:     High
Credit:       McCaulay Hudson (@_McCaulay) of watchTowr

Timeline
--------

   2026-09-08 13:48 UTC Report received
   2026-09-10 14:52 UTC Fix drafted
   2026-09-11 18:00 UTC GCVEs assigned by [GNA](https://gcve.eu/gna/25/)
   2026-09-15 12:00 UTC Fix branch and tag exim-4.100.1 pushed to exim-distros
   2026-09-18 12:00 UTC Public release

Vulnerability Summary
---------------------

A remote attacker can cause a leak of stack data to be transmitted.

Affected Systems
----------------

- Exim versions from 4.83 (2014) up to and including 4.100 are affected.
- The installation must be built and configured for Proxy-Protocol use.
- A configured proxy must be be buggy or compromised

Mitigation
----------

(None)

Resolution
----------

The issue is resolved in Exim version 4.100.1. All users of affected
versions are strongly encouraged to upgrade.

The fix repeats reads until a complete protocol header is received.

----

Title: Exim Security Advisory for EXIM-Security-2026-09-12.4 / GCVE-25-2026-09-56-1
Announced: 2026-09-18
Affects: All Exim versions up to and including 4.100
Corrected: Exim 4.100.1
Reporter ref: WT-2026-0148

Exim Security Vulnerability: EXIM-Security-2026-09-12.4
=======================================================

Identifier:   EXIM-Security-2026-09-12.4 (GCVE-25-2026-09-56-1)
Area:         SMTP reception
Type:         SMTP smuggling
Severity:     Medium
Credit:       McCaulay Hudson (@_McCaulay) of watchTowr

Timeline
--------

   2026-09-08 13:46 UTC Report received
   2026-09-11 12:53 UTC Fix drafted
   2026-09-11 18:00 UTC GCVEs assigned by [GNA](https://gcve.eu/gna/25/)
   2026-09-15 12:00 UTC Fix branch and tag exim-4.100.1 pushed to exim-distros
   2026-09-18 12:00 UTC Public release

Vulnerability Summary
---------------------

A remote attacker can cause a message submission different to the one sent
and logged by the sending system.  The attack requires a data-phase rejection
of a message which has crafted data following the rejection point.

Note hoever that the normal and configured procesing done for recived
messages is applied to the "smuggled" message.

Affected Systems
----------------

- All Exim versions up to and including 4.100 are affected.

Mitigation
----------

(None)

Resolution
----------

The issue is resolved in Exim version 4.100.1. All users of affected
versions are strongly encouraged to upgrade.

The fix properly identifies the end of data phase, for a rejection.


----


Downloads
---------

The new version is available from the usual locations:

- https://ftp.exim.org/pub/exim/exim4/
- https://code.exim.org/exim/exim (branch master, tag exim-4.100.1)

The release tag exim-4.100.1, signed by

*  key ID 0xBCE58C8CE41F32DF
     Email: jgh@???


SIZE(00-sha256sums.txt)= 1833
SIZE(00-sha512sums.txt)= 2985
SIZE(00-sizes.txt)= 762
SIZE(exim-4.100.1.tar.bz2)= 2184903
SIZE(exim-4.100.1.tar.gz)= 2751495
SIZE(exim-4.100.1.tar.xz)= 2007956
SIZE(exim-html-4.100.1.tar.bz2)= 652419
SIZE(exim-html-4.100.1.tar.gz)= 903609
SIZE(exim-html-4.100.1.tar.xz)= 640384
SIZE(exim-info-4.100.1.tar.bz2)= 485497
SIZE(exim-info-4.100.1.tar.gz)= 653777
SIZE(exim-info-4.100.1.tar.xz)= 487004
SIZE(exim-pdf-4.100.1.tar.bz2)= 2219741
SIZE(exim-pdf-4.100.1.tar.gz)= 2250800
SIZE(exim-pdf-4.100.1.tar.xz)= 2183016
SIZE(exim-postscript-4.100.1.tar.bz2)= 1172177
SIZE(exim-postscript-4.100.1.tar.gz)= 1572700
SIZE(exim-postscript-4.100.1.tar.xz)= 1161232
SIZE(exim-texinfo-4.100.1.tar.bz2)= 459226
SIZE(exim-texinfo-4.100.1.tar.gz)= 614517
SIZE(exim-texinfo-4.100.1.tar.xz)= 462176

SHA2-256(00-sha256sums.txt)= 64934708b587089d6019892a2fe5ad7d5cb5b2413bd78e4dbf1d66e462952a90
SHA2-256(00-sha512sums.txt)= 9b2318956abcb26a193702401713368853e9c6c4d7d4654028aa14cafb24e75c
SHA2-256(00-sizes.txt)= ae4b8149277d385e3bfb20737590c71426a70aff10f7cb12188c345f30ab387b
SHA2-256(exim-4.100.1.tar.bz2)= 5258d114acde46d62445328424c3cb37a0445c9228338f2e265f01b8e8615f66
SHA2-256(exim-4.100.1.tar.gz)= bc5f28d55b355939ecbf1e3ff0c7db81ed61e1fc61a1b8887b5fc922aa974075
SHA2-256(exim-4.100.1.tar.xz)= e9fb41f6724a5b136d64c9d19dbc5f26494af879a3e7e3190f91639eaa79fa0d
SHA2-256(exim-html-4.100.1.tar.bz2)= 82e426dcfa5d3795b4b82f5dfe91290a4f265d17fb07c1e842a701f398751fb3
SHA2-256(exim-html-4.100.1.tar.gz)= 21af75cadbb9a93596bd5b1ac1a091d9dbff08269fd33bcd62e295c123080af3
SHA2-256(exim-html-4.100.1.tar.xz)= 04cdffd8457072557228239d55d9b9ac672e64324881601440199d0692b9da03
SHA2-256(exim-info-4.100.1.tar.bz2)= 549b6da5a75f0e0f75fd00c31822d861a6068a17018f1aff7daa12f3ce5abfbf
SHA2-256(exim-info-4.100.1.tar.gz)= 05e82d1122c2bcfa24797f76c29f4eb7967b2644b621eb5ad4e79ea1019a9697
SHA2-256(exim-info-4.100.1.tar.xz)= 8ae8d645303a68988970ff62aaeae5a2d79e1cf78a26b866ab8017914d694ca4
SHA2-256(exim-pdf-4.100.1.tar.bz2)= 2c457c07905ceaa637c83890b00bcf7a1d306bf04121f4ab2732e402c655311b
SHA2-256(exim-pdf-4.100.1.tar.gz)= 8ad869693b650db1e1d6af51d7bee635814ddbe1d0aaba0fae26d7aa7b0e2b46
SHA2-256(exim-pdf-4.100.1.tar.xz)= b35f9207cf918ac87bdd2fa4181fae4a4f0edf2b6caba1704b7c71f7294695af
SHA2-256(exim-postscript-4.100.1.tar.bz2)= c0286d465f51366a29fe8845d030c370e9cf58edf98d055db99ab3dae2d296bd
SHA2-256(exim-postscript-4.100.1.tar.gz)= e62c6a2ed947ffb01e5ab3485d5e1bbadc3ec9f153282cc91d67424db65a015b
SHA2-256(exim-postscript-4.100.1.tar.xz)= 09fe756947d82a85e56a2fab2df7b0e280aba9018cd9b054a4413de39feed5e4
SHA2-256(exim-texinfo-4.100.1.tar.bz2)= 547f7e527d81eb640d94c978a1d9ae80239eb17cc9f5681ec2b8cb8d9fc599f1
SHA2-256(exim-texinfo-4.100.1.tar.gz)= 92afabbcd2f4af83ab7177a9d15c1661d82f47b189d60cadd4c319300131fb79
SHA2-256(exim-texinfo-4.100.1.tar.xz)= c09df28e9b4eb20ba34410c1ae447a47e23d730efaafe487b8743087b2f42dd3


-- 
Bernard Quatermass
