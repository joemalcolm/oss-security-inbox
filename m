X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1891" "Wednesday" "15" "April" "2015" "18:55:01" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1429120501.3211.88.camel@decadent.org.uk>" "51" "[oss-security] Re: TCP Fast Open local DoS in some Linux stable branches" nil nil nil "4" "2015041517:55:01" "[oss-security] Re: TCP Fast Open local DoS in some Linux stable branches" (number mark "        ben@decadent Apr 15   51/1891  " thread-indent "\"[oss-security] Re: TCP Fast Open local DoS in some Linux stable branches\"\n") "<1429043059.3211.58.camel@decadent.org.uk>" ("<1429043059.3211.58.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13838 invoked by uid 550); 15 Apr 2015 17:55:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13746 invoked from network); 15 Apr 2015 17:55:23 -0000
Message-ID: <1429120501.3211.88.camel@decadent.org.uk>
In-Reply-To: <1429043059.3211.58.camel@decadent.org.uk>
References: <1429043059.3211.58.camel@decadent.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-7ZT062y0JUM9w3ol9ox/"
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.4.249
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: 782515@bugs.debian.org
Date: Wed, 15 Apr 2015 18:55:01 +0100
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: TCP Fast Open local DoS in some Linux stable branches
To: oss-security <oss-security@lists.openwall.com>

--=-7ZT062y0JUM9w3ol9ox/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2015-04-14 at 21:24 +0100, Ben Hutchings wrote:
> There is a local DoS triggered by use of the TCP Fast Open option,
> specific to Linux stable branches, as a result of an incompletely
> backported bug fix:
>=20
> https://bugs.debian.org/782515
> http://thread.gmane.org/gmane.linux.network/359588
>=20
> The 3.16.7-ckt stable branch is definitely affected, and I believe but
> haven't tested that the 3.10, 3.12, 3.13.11-ckt and 3.14 branches are
> also affected.
>=20
> Please assign a CVE ID for this.

As mitigation, TCP Fast Open can be disabled by setting sysctl
net.ipv4.tcp_fastopen=3D0.  It was disabled by default before Linux 3.13.

Ben.

--=20
Ben Hutchings
Editing code like this is akin to sticking plasters on the bleeding stump
of a severed limb. - me, 29 June 1999

--=-7ZT062y0JUM9w3ol9ox/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIVAwUAVS6l+ue/yOyVhhEJAQpJyRAAs+VZxZrIXSb6zZZB7At6ncvEEBkAavpg
2+BZtBwy6j1z8vBIRjLPo/Jhl13m4jnSidPBKMFqLICfUI+N3FN3acHb/D1JTd2g
kN+ibXDvDJ2jVE215cmtKoa3bFrgxH1wx+Jp2h3QdLFEWBZAARaCqS9y8qzbLIt4
7QAcvXT9/OU+AqZCv0MBAHDdLRwMOiQSCOszxJuczNnU1rQte0bXoOb4HlQZuZ1k
jWVnUMtLQzSzGd9MmeSejYlCZ307DWj/kXXICSgFiy7e7HM7cYga8QZSV/YPI3yd
ZaXZBq0kE3h81acPNVt9oLlTN8reOCD/aNKekOxw9Tol6V+a307kbl8HmXSIDMKh
i0P7EYiArymXoTCtHdke4/2115spiWtI5OARHIuN36qcwXEMAWlnLbMyy+ZPemE/
lfP6Y/pfb/5CsohZ4939xU5hxYN4s8COas833PqmSFgAHcYO1Opg8Mq2Cl81GN73
5UfkRVPgIu1c97EGRVDoCUYdTlBbrq9fDPoYBKJ/sCyp/UXry2uUa8clnYwVz0XI
1PvBBd9nKPyJ6MtV+AZ4w4nRk38a7pT7ONjHHevlb0iztE0jx2dkjrHt0MS/Q0Np
ed/RBJXlHcgDWTGEQuMQtFD/gUUbtpzpMQowzAXB0836Yk8jWU4MYZknbph2hAys
XxCVNV5qh1g=
=POTJ
-----END PGP SIGNATURE-----

--=-7ZT062y0JUM9w3ol9ox/--
