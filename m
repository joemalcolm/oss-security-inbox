X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1846" "Monday" "16" "November" "2020" "20:06:15" "+0100" "Marius Bakke" "marius@gnu.org" "<87eekt9l5k.fsf@gnu.org>" "45" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111619:06:15" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       marius@gnu.o Nov 16   45/1846  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>" ("<20201113133331.48185f9f@computer>" "<20201114115850.GB5193@suse.de>" "<E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23682 invoked by uid 550); 16 Nov 2020 19:40:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7897 invoked from network); 16 Nov 2020 19:06:34 -0000
From: Marius Bakke <marius@gnu.org>
To: "David A. Wheeler" <dwheeler@dwheeler.com>, oss-security@lists.openwall.com
In-Reply-To: <E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>
References: <20201113133331.48185f9f@computer>
 <20201114115850.GB5193@suse.de>
 <E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>
Date: Mon, 16 Nov 2020 20:06:15 +0100
Message-ID: <87eekt9l5k.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in
 Linux distros

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

"David A. Wheeler" <dwheeler@dwheeler.com> writes:

> If you think that CVE assignment is still of =E2=80=9Cfluctuating reliabi=
lity=E2=80=9D I=E2=80=99d like to hear that argument
> and get it fixed. It=E2=80=99s normally better to fix the standard proces=
s for doing something than
> to create yet another process that runs in parallel. I=E2=80=99ve seen no=
 recent evidence of this reliability issue.

Speaking as a co-maintainer of an understaffed GNU/Linux distribution
who fixed this back in 2017[0], I preferred the "old days" when free
software security problems were almost always discussed on this list.

While there's no questioning the utility of CVEs in general (Guix can
check the CVE list for any given package with 'guix lint -c cve PKG'),
there are still unresolved CPE mappings, and I don't know how to get
informed of new problems without checking specific (or all) packages.

I tried following the CVE assignment RSS feed initially, but it was not
suitable for human consumption.

How do other distros keep up with new CVE assignments?

[0] https://git.savannah.gnu.org/cgit/guix.git/commit/?id=3D099c9fdae623e06=
e4fded8b0d4e55d9d5b56715b

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFDBAEBCgAtFiEEu7At3yzq9qgNHeZDoqBt8qM6VPoFAl+yzacPHG1hcml1c0Bn
bnUub3JnAAoJEKKgbfKjOlT6zVAH/0pn060C1Dc5O5goLegZHPgWxKMPfucU8VeJ
8On5rZBRTPiUGhqLEOH0+GsQKj176P3/bkb70cV0dl7whi/rdFLV1vSf9modrkUC
QVCmMrTTiJ1AUHoBQWubHmVkaCHfFlM/7waKULb5ApJCuXexvmpCrv5jENlnO/il
+TkI9/199qHeXNHRTM0iMWhyhHf+jQC8H+gleBBCH+XaWkPuJxlOpibvzvmBkFJJ
LQiWbYgjySrEelQ44kcw4GYTdGC9RIJu3K+nJsU0n6/SLYqRbKtj5SsyxawOiMjb
zb8Dk/KSkVD2EPWsJrd9ERYmA3RPS5FDhAgzfV5LK/b7mpu16Oo=
=l921
-----END PGP SIGNATURE-----
--=-=-=--
