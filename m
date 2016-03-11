X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2486" "Friday" "11" "March" "2016" "17:25:15" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160311172515.5af76630@pc1>" "67" "[oss-security] Several out of bounds reads in ProFTPD" nil nil nil "3" "2016031116:25:15" "[oss-security] Several out of bounds reads in ProFTPD" (number mark "U       hanno@hboeck Mar 11   67/2486  " thread-indent "\"[oss-security] Several out of bounds reads in ProFTPD\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22013 invoked by uid 550); 11 Mar 2016 16:25:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21962 invoked from network); 11 Mar 2016 16:25:23 -0000
Date: Fri, 11 Mar 2016 17:25:15 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <20160311172515.5af76630@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-8296-1457713511-0001-2"
Subject: [oss-security] Several out of bounds reads in ProFTPD

--=_zucker.schokokeks.org-8296-1457713511-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/40-Several-out-of-bounds-reads-in-ProFTPD.=
html

The latest releases of ProFTPD 1.3.5a and 1.3.6rc2 fix several out of
bounds read issues. I discovered these issues by running the test suite
with Address Sanitizer enabled.

An invalid off by one read can happen in the function pr_fs_dircat().
This affects both 1.3.5a and 1.3.6rc1 and earlier.
http://bugs.proftpd.org/show_bug.cgi?id=3D4194
Upstream bug report
https://github.com/proftpd/proftpd/commit/f99ef850a05f46c56be8deae97e59efa5=
0575e69
Git commit / fix

An invalid off by one read can happen in the string handling function
pr_ascii_ftp_to_crlf(). This code is not present in the stable 1.3.5
release series and only affects 1.3.6 release candidates before rc2.
http://bugs.proftpd.org/show_bug.cgi?id=3D4195
Upstream bug report
https://github.com/proftpd/proftpd/pull/145
Git commit / fix

A missing null termination of a string causes an out of bounds memory
read in a test. This does not affect the ProFTPD code itself, it's just
an issue in the test suite.
http://bugs.proftpd.org/show_bug.cgi?id=3D4193
Upstream bug report
https://github.com/proftpd/proftpd/commit/d9f9d469ce1da09c7935f509797d488fa=
2d08697
Git commit / fix

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-8296-1457713511-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJW4vFrAAoJEKWIAHK7tR5CDYsP/jeWIai18369WJoIDXdwHssn
3i5JAXqFMFgNd1sPmMPTyikr7h6H8ZsH2sGHiimCI8vNVRytN1ooB+1u6bqeDU2e
H8iqrOT4OhlUT8J0B8E3VzqYTpgdiFdIXBXPHwiQsksk4r3xR+BwNPBKr4NPxyJg
jrZ3wuDQHYF28GXEsA7UU4MQGoXkkN5RR7NOUY0eiHPnyOQq/35Bhtp0e9Mf8uW+
rqXsy2lCVvGAo9Si3NZ8hv9ggluV/0QqtqcFrH+FfukEmI3s3fL+c7Sp5TT4Dsdq
FqR4BQXXE79GunSSmmOnCWq7TPZFjTmQDyKCTnfmm/KOgc4v0rhR9iIdsymt/j4q
u4x1ZzZNsBYEfM181tnmniKSxny4Yo7kHIQ1bjqGKrbhqslnO6BLRvtRPFtHrUED
Cve/+FAvW2nwW2HYHvXLFM3QoImXAQYnXl9soYPAKry0O7iW8E4KL532OgMdaUXJ
5XDGDUoDUhbe8SudmVCf1k7o28jymlou4F3iiLHSiw3P74zeo0pGDGdoN0cmUaTt
LYlRijl7UnE5WMs35Ribdam04tya+hcrLICqSddnrvcw+gk1YPAsbcbrY9jOcvD9
5eIBxiDWLzkw7HC+gMBIqQTRhZ/mip2JlH6+fNp0h968cjyEo93Wn22OJ6JY52jP
6/QrREQREtq3J35ewBCA
=U2uH
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-8296-1457713511-0001-2--
