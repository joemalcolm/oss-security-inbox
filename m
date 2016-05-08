X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2515" "Sunday" "8" "May" "2016" "22:19:02" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160508221902.04889595@pc1>" "69" "[oss-security] dosfstools / fsck.vfat: Several invalid memory accesses" nil nil nil "5" "2016050820:19:02" "[oss-security] dosfstools / fsck.vfat: Several invalid memory accesses" (number mark "U       hanno@hboeck May  8   69/2515  " thread-indent "\"[oss-security] dosfstools / fsck.vfat: Several invalid memory accesses\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19735 invoked by uid 550); 8 May 2016 20:20:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19478 invoked from network); 8 May 2016 20:19:16 -0000
Date: Sun, 8 May 2016 22:19:02 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <20160508221902.04889595@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-8084-1462738744-0001-2"
Subject: [oss-security] dosfstools / fsck.vfat: Several invalid memory accesses

--=_zucker.schokokeks.org-8084-1462738744-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/44-dosfstools-fsck.vfat-Several-invalid-me=
mory-accesses.html

I lately fuzzed various filesystem check tools. This uncovered a number
of issues in dosfstools / fsck.fat that have now been fixed in the new
version 4.0. All issues were found with american fuzzy lop and address
sanitizer.

https://github.com/dosfstools/dosfstools/issues/11
Global out of bounds read file_stat() / check_dir()
https://github.com/dosfstools/dosfstools/commit/2aad1c83c7d010de36afbe79c9f=
de22c50aa2f74
Git commit / fix

https://github.com/dosfstools/dosfstools/issues/12
Unclear invalid memory access in get_fat()
https://github.com/dosfstools/dosfstools/commit/07908124838afcc99c577d1d3e8=
4cef2dbd39cb7
Git commit / fix

https://github.com/dosfstools/dosfstools/issues/25
Heap overflow in read_fat()
https://github.com/dosfstools/dosfstools/issues/26
Heap out of bounds read in get_fat()
https://github.com/dosfstools/dosfstools/commit/e8eff147e9da1185f9afd5b2594=
8153a3b97cf52
Git commit / fix for both issues

These bugs can pose a security risk if a system automatically checks
attached storage media with fsck or in situations where filesystems on
untrusted devices get checked. The new version dosfstools 4.0 fixes all
four bugs.


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-8084-1462738744-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXL582AAoJEKWIAHK7tR5CQ4MQAKlhiqbGT58uwo+Afpf6aTNh
oUF3C+iJIT5XXldAat0OFUKe4LriFwFzYZBZdmyvZoDITHZR1wP1nAiZEEK8gaWk
vrgqR6MMo5jUu469yEaUaATHSvgnD48z4880Xq80zG8ybP/FYSLb3xGmAYfkeJ7n
JIHQcHd4I5EwI88o845G77377inH2QqZ1rSa7Hh8H+rNBTlAPyrar6cVvZkGaxF7
Q/ih42N0QVOYem51C+TgFDZEGJiXR5BDq67tIKOPyY1+egDDpLYcpv3Wu5w/uax9
pCsYNvV38/Dx4TlpHJLURmorzEOhzclC0EMQlGVVGMiYtdTpkJAxRStwwULh5sdQ
K6DuoOOmNa7oHNzUIOVVnQ39k8LSnXRt/4LSokgiIioeb/dDh7U0HGuwX7ZBrO5x
CHx9NYw/sI3YdiWTI9tDgRBZk6yyRhe4fTR9fyj1gk40sRMxNF+xtg3cZgaThHbY
dvzcPBkGljaoknfMMHMNPC9TPcUHZZXI8El1OG1ifsVbWMg+4f8fFCygjs5MzNfr
wCeD2bKFY6a2yH4cv+XcxlY4MVT3LO3UfCqWizoLGce02NmZ8YQ6w/BtRgzCHuGp
pOBMJm6EHlwoiihXZvzRQA3xpFkK+Xwr0V6cWv9SiojqsfAE0MpB70Qfcn1NmQ6m
3LEYlbQ9bzdfEHLaMjMK
=180s
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-8084-1462738744-0001-2--
