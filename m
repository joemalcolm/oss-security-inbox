X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/26/5
Message-ID: <87pkvrtwhp.fsf@gentoo.org>
Date: Thu, 26 Nov 2026 15:58:58 +0000
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Fwd: [exim-announce] Exim Security Release - 4.100.2
Content-Type: text/plain; charset=utf-8


-------------------- Start of forwarded message --------------------
Date: Wed, 25 Nov 2026 13:04:55 +0000
To: Exim Announcements <exim-announce@...ts.exim.org>,
 exim-users@...ts.exim.org
Subject: [exim-announce] Exim Security Release - 4.100.2
From: Bernard Quatermass via Exim-announce <exim-announce@...ts.exim.org>
Cc: Bernard Quatermass <bernardq@...m.org>


Dear Exim users,

The Exim maintainers are releasing a security fix for one security issue.


  * GCVE-25-2026-11-82-1 - Fix an OOB write resulting from header decode


Identifier: EXIM-Security-2026-11-82.1 (GCVE-25-2026-11-82-1)
Area: SMTP reception
Severity: Medium
Credit: The unnamed and uncredited authors whose works
were ingested as the training corpus

A remote attacker can cause a write outside an allocated area,
followed by an expansion operation done with root privilege.



Downloads
---------

The new version is available from the usual locations:

- https://ftp.exim.org/pub/exim/exim4/
- https://code.exim.org/exim/exim (branch master, tag exim-4.100.2)

The release tag exim-4.100.2, signed by

*  key ID 0xBCE58C8CE41F32DF
     Email: jgh@...m.org


SIZE(00-sha256sums.txt)= 1833
SIZE(00-sha512sums.txt)= 2985
SIZE(00-sizes.txt)= 762
SIZE(exim-4.100.2.tar.bz2) = 2184818
SIZE(exim-4.100.2.tar.gz) = 2751594
SIZE(exim-4.100.2.tar.xz) = 2008056
SIZE(exim-html-4.100.2.tar.bz2) = 653151
SIZE(exim-html-4.100.2.tar.gz) = 904605
SIZE(exim-html-4.100.2.tar.xz) = 640656
SIZE(exim-info-4.100.2.tar.bz2) = 485263
SIZE(exim-info-4.100.2.tar.gz) = 653785
SIZE(exim-info-4.100.2.tar.xz) = 487092
SIZE(exim-pdf-4.100.2.tar.bz2) = 2219535
SIZE(exim-pdf-4.100.2.tar.gz) = 2250820
SIZE(exim-pdf-4.100.2.tar.xz) = 2183624
SIZE(exim-postscript-4.100.2.tar.bz2) = 1172353
SIZE(exim-postscript-4.100.2.tar.gz) = 1572710
SIZE(exim-postscript-4.100.2.tar.xz) = 1161292
SIZE(exim-texinfo-4.100.2.tar.bz2) = 459021
SIZE(exim-texinfo-4.100.2.tar.gz) = 614517
SIZE(exim-texinfo-4.100.2.tar.xz) = 462156

SHA2-256(00-sha256sums.txt)= 68eaecac6fabb5076f5eb146af29869a22c825599d69aa44a9f8309b90570d1d
SHA2-256(00-sha512sums.txt)= 0a35277e585efda050f9f009d57b9467738399f7123213871f9f7e749e523817
SHA2-256(00-sizes.txt)= 3864102ee1ea39c18575359798a494297557e43040249a48e50c5915c6e992d7
SHA2-256(exim-4.100.2.tar.bz2) = 574146be26bf0a1daade749cdc50f4227ab6d230fc716659c4b07f0db22d3271
SHA2-256(exim-4.100.2.tar.gz) = 4e8006ee06ab6e2443fc6af0edfdfa03811a5fa4bf8f58b84622b91b170e1482
SHA2-256(exim-4.100.2.tar.xz) = 04c9958bf15e7e3d518fb55f8b343cba4789447212bc699a9be2b1d11c1016f6
SHA2-256(exim-html-4.100.2.tar.bz2) = 90a44bd4ba4328b56a56661269773cf59cfc290c5ada6b76686010717d8a019d
SHA2-256(exim-html-4.100.2.tar.gz) = e0cbed8603bca65ed92a56d7c526ff99528955931f2b30eceaadc0a92dabd6e2
SHA2-256(exim-html-4.100.2.tar.xz) = 4f7578bc53e199f5820de404747e4b2c8929985852ed90181094df0cd2c3a188
SHA2-256(exim-info-4.100.2.tar.bz2) = 912df6fa77612290248c55cd5506958d9bd4a78fab8238c207a737ebd23933d8
SHA2-256(exim-info-4.100.2.tar.gz) = 2aa38c43f14ffed4e5a35988a6bb120f60e3fb4d5c79e40e029921552defcec1
SHA2-256(exim-info-4.100.2.tar.xz) = f343b77e8938caadd16d1b1072b5a9c5437a97bc90892941f3d695965198cdd6
SHA2-256(exim-pdf-4.100.2.tar.bz2) = df82acf5b69cec3a9a30aa5e1b05ddb179797dc7879363606a1a7983e3942325
SHA2-256(exim-pdf-4.100.2.tar.gz) = 4bdf7c540a7b24525cc407ed1abafe861a267b2cb4dd140987bf0dd60f8906e2
SHA2-256(exim-pdf-4.100.2.tar.xz) = 7831d262a4ee811c0cbbb61502f50ad6e6b4e1033de3c215eab1eb0e09b9959b
SHA2-256(exim-postscript-4.100.2.tar.bz2) = 09ccd3e1a320d1e378eb7f4bd6d4b5168b86254577659efb7280175de16f1ae6
SHA2-256(exim-postscript-4.100.2.tar.gz) = d194d33c765e945afd849714b9a4c7a7fd36b70f2b89cdd76757157a25be0b91
SHA2-256(exim-postscript-4.100.2.tar.xz) = fecb8bbe023f66fe4c02de8a03d57331af60380e684e9600126de6d31ca219b4
SHA2-256(exim-texinfo-4.100.2.tar.bz2) = e8191618e06516a7862e929ef77099922df7979832c942205908d79624dbe4fd
SHA2-256(exim-texinfo-4.100.2.tar.gz) = 6bb6e290928d6431a13255e75fd38423f4bcf7646d5cd62b0c90cad1b5cbf228
SHA2-256(exim-texinfo-4.100.2.tar.xz) = 5c3a0b89060785574859fe999073f10920942f577d2dde84d252a484d3ad5183


-- 
Bernard Quatermass



Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (665 bytes)


-- 
## subscription configuration (requires account):
##   https://lists.exim.org/mailman3/postorius/lists/exim-announce.lists.exim.org/
## unsubscribe (doesn't require an account):
##   exim-announce-unsubscribe@...ts.exim.org
## Exim details at https://www.exim.org/
## Please use the Wiki with this list - https://code.exim.org/exim/wiki/wiki


-------------------- End of forwarded message --------------------


Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
