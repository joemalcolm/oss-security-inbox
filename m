X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1785" "Friday" "15" "January" "2016" "15:03:33" "+0100" "Yves-Alexis Perez" "corsac@debian.org" "<1452866613.15013.86.camel@debian.org>" "52" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Date:" nil nil "1" "2016011514:03:33" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        corsac@debia Jan 15   52/1785  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<20160114171301.GH28298@localhost.localdomain>" ("<20160114171301.GH28298@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3811 invoked by uid 550); 15 Jan 2016 14:03:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3793 invoked from network); 15 Jan 2016 14:03:49 -0000
Message-ID: <1452866613.15013.86.camel@debian.org>
In-Reply-To: <20160114171301.GH28298@localhost.localdomain>
References: <20160114171301.GH28298@localhost.localdomain>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-rcPQkJEmTM2Fl4P1697P"
X-Mailer: Evolution 3.18.3-1 
Mime-Version: 1.0
Date: Fri, 15 Jan 2016 15:03:33 +0100
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security@lists.openwall.com, openssh@openssh.com

--=-rcPQkJEmTM2Fl4P1697P
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On jeu., 2016-01-14 at 09:13 -0800, Qualys Security Advisory wrote:
> Qualys Security Advisory
>=20
> Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778

This is not directly related to the Qualys advisory, but the 7.1p2 OpenSSH
releases [1] fixes another vulnerability, could CVE be assigned?

SECURITY: Fix an out of-bound read access in the packet handling code.
Reported by Ben Hawkes [2]

There's also a fix [3] related to X11 forwarding which seems different than
the fix which went into OpenSSH 6.9 [4,5]. I'm not sure if it deserves a CVE
or not.


[1]=C2=A0http://www.openssh.com/txt/release-7.1p2
[2]=C2=A0https://anongit.mindrot.org/openssh.git/commit/?id=3D2fecfd486bdba=
9f51b3a789
277bb0733ca36e1c0
[3]=C2=A0https://anongit.mindrot.org/openssh.git/commit/?id=3Ded4ce82dbfa8a=
3a3c8ea6fa
0db113c71e234416c
[4]=C2=A0http://www.openssh.com/txt/release-6.9
[5]=C2=A0https://anongit.mindrot.org/openssh.git/commit/?h=3DV_6_9_P1&id=3D=
1bf477d3cdf1
a864646d59820878783d42357a1d
--=20
Yves-Alexis


--=-rcPQkJEmTM2Fl4P1697P
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJWmPw2AAoJEG3bU/KmdcClCC8H/ishNA5mlaKw/cCyT7orG6os
3MQy9eWlTFZvWTdpJ5gbUujcQO/2tPx8ICaNH2a49PRT6I8LKagJ2gmRehc+df6N
m292fQwyB42Ce341KnffscZrvGsz4rzq0Eryv0aX2UReOz0OXyE2nSLrUiaB+5op
u+bk2Xx+NdsWWXK+92vbuvB5kmujPox0Gw1ohavyg08OQMHUDnxHucIrhA3tRILv
weHH3sS5SfbuFkR7hkHQzs1UwPAjokI9s8eV9mbCsZm87MUijd98QJYx9W8P3l4N
KVaj/VsACo3fzOEsP88wFL/bVUagZcImjbkx0s3j45G5XliVyG1tgise4vFnXck=
=SzdE
-----END PGP SIGNATURE-----

--=-rcPQkJEmTM2Fl4P1697P--
