X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2539" "Tuesday" "27" "September" "2016" "10:54:00" "+0930" "Doran Moppert" "dmoppert@redhat.com" "<20160927012359.GA30247@sin.redhat.com>" "79" "[oss-security] openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045" "^Date:" nil nil "9" "2016092701:24:00" "[oss-security] openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045" (number mark "U       dmoppert@red Sep 27   79/2539  " thread-indent "\"[oss-security] openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21965 invoked by uid 550); 27 Sep 2016 03:36:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9255 invoked from network); 27 Sep 2016 01:24:17 -0000
Message-ID: <20160927012359.GA30247@sin.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 27 Sep 2016 01:24:05 +0000 (UTC)
Date: Tue, 27 Sep 2016 10:54:00 +0930
From: Doran Moppert <dmoppert@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045
To: oss-security <oss-security@lists.openwall.com>

--KsGdsel6WgEHnImy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

First, CVE-2016-3181 and CVE-2016-3182 have been identified by upstream as =
the
same underlying issue.

https://github.com/uclouvain/openjpeg/issues/724

> Origin of the issue is the same as #725

https://github.com/uclouvain/openjpeg/issues/725

Original requests:

http://seclists.org/oss-sec/2016/q1/630
http://seclists.org/oss-sec/2016/q1/631


.. it gets more interesting.  The reproducer on issue 725 happens to tickle
a flaw in a patch for CVE-2013-6045 that was posted here back when:

http://seclists.org/oss-sec/2013/q4/412

segfault-1.patch uses:

+		tilec->data =3D (int*) opj_aligned_malloc((comp0size+3) * sizeof(int));

which should have used compcsize instead of comp0size.

Upstream never included this patch - deeper work went into eliminating this=
 and
other issues in openjpeg-1.5.2.  The patch that addresses this particular i=
ssue
seems to be 69cd4f92 (hunk starting /* testcase 1336.pdf.asan.47.376 */).

https://github.com/uclouvain/openjpeg/commit/69cd4f92
https://github.com/uclouvain/openjpeg/issues/297

This hasn't been an issue in upstream openjpeg releases for a long time ...
but there are LTS distributions around still shipping 1.5.1 (or 1.3) with t=
he
patches from here applied.  Those should preferably upgrade to 1.5.2:  chan=
ging
comp0size to compcsize eliminates this particular crash, but the upstream f=
ixes
that got into 1.5.2 seem to more thoroughly address some of the underlying
problems.



--=20
Doran Moppert
Red Hat Product Security

--KsGdsel6WgEHnImy
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJX6covAAoJEGohqWcZR7qpvB8P/iV9I7Pb/u62n51bLfA4TkqX
Q16jKYHlJ99f+M9GHt63hr1GF1qV9AkPTMH36TaJJfJYVcXy1LQWh3xAxIvRp+on
On1a+rcZzAZOsZVWWFfBxMYf4+31G0m9xIVz6XTIs82MCaYFGjSNWVwqX0YW1Nk0
xQCnhqIcb1F9iJVLqsh/QGdCwK+OnBZwcoJr0qcezwkLfnoget+0cO3BbkGUFLK7
m2oKJbzqx27VnHLpvGorqloY6s/rAEBkdeRxcMUbFYqBI2LUEfjkn414ChGlZET4
/3piYFkzyC0BvNVh+Pp4vHBzqCu2a55fYaGxKUbQQezRJgu+y3UpAIRPn9dRBqSz
SPnwVuiB6CzYTQvzY+uxkUnTzvUCq7qeOgg9bU5g/yheKBVUkhAtnp8rqfGDxuQj
ua+VCaV/HYFeD0ckhVbItqAvWJq/XxI4d3YGev6WniBFkoemZfw4yCx49O67289f
KvkyG6+XtrHpkVo/jVisA4wG7yO94gkA5U6+PXErvIXVqhoMHsJgvswx3Ko6RRaI
djfUmuH3tDbEEKMNrpaq9Lp8/9nnufmdJf4E1ZgepnIweQo56Wzt9rl3WinrFR7a
gy8RflxMKFKgHMnAnW9/gcEKfOtWMhJ8ZF6IbkzzBDjeF8MYuBATbbEaHpmFHUCC
WeFX0lBfGlwW5cCCkSWU
=l2li
-----END PGP SIGNATURE-----

--KsGdsel6WgEHnImy--
