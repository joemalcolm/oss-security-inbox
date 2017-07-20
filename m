X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1721" "Thursday" "20" "July" "2017" "07:13:03" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20170720041303.GA4266@gremlin.ru>" "48" "Re: [oss-security] CoreOS membership to linux-distros (updated)" "^Date:" nil nil "7" "2017072004:13:03" "[oss-security] CoreOS membership to linux-distros (updated)" (number mark "        gremlin@grem Jul 20   48/1721  " thread-indent "\"Re: [oss-security] CoreOS membership to linux-distros (updated)\"\n") "<9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>" ("<9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19472 invoked by uid 550); 20 Jul 2017 10:33:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24261 invoked from network); 20 Jul 2017 04:13:17 -0000
Message-ID: <20170720041303.GA4266@gremlin.ru>
References: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=x-unknown;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline
In-Reply-To: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Date: Thu, 20 Jul 2017 07:13:03 +0300
From: gremlin@gremlin.ru
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CoreOS membership to linux-distros (updated)
To: oss-security@lists.openwall.com

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2017-07-18 14:56:23 -0700, Euan Kemp wrote:

 > I???ve listed each criterion and why I think we, the Container
 > Linux team at CoreOS, qualify.
 >
 >
 >> 1. Be an actively maintained Unix-like operating system distro
 >> with substantial use of Open Source components
 > All components of the distro are open source, as are all the
 > tools used to build it.

Prior to any decision to be made, I'd ask you to show the kernel
patch which you use to avoid escaping from the container to host
system (Docker allows such escape, OpenVZ does not). Could you,
please, show it?


--=20
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZcC3PAAoJEJCdrEXvOx+o7mYQAIqQJ3VqXGspY0mN3KE2MTPe
K53m607psuWktL+Hx4Ekh63gXff115VIfmnCqJ+5udfhc4sGaE4JugNwyp33mE0j
vaJj0/nZyePWNih7Fl4hnFj76isq4UjUd0K+MAMeW9Lj1nc4fZ9Yf7ogvZYAXRH9
OLyb+yhh/t6nvZFALN11xlDXFaeG+kpymRRzcVU7TA+Lkp6QJ1lOfksF2kEVWO5K
hKqFRoUmhrqIwk/AKxY3On1oAvSYhx7O0z3QRAgNGRtrVrZGLdDgIFHJ+3AX/9o2
Y0DqS9FXZcQS5ezQr9UxlwsCSlTlOt9ZEtPvb5x5kP2x8MkV+dvoz7R0GkZK2oOq
S/tn8f5cQRLDvzkAcaCNucm20e6z1BS8JeKmQXtT4YMVQ8xcY7aBm0GjBppTwoPf
KGh3hjByXMaudls9gpgOiDjSRfhC/i3o9CrxlU0gD69JMS8AQlOspRnkwBx8RPH5
Vn0dggF7u9RHgVachr7RBzyoSc+jlzWhj/rVjE+nViOGmSxjQ5RaVOlf7iIVQXNy
Uwjw1knZsXpt/ICwteC/XVPhjwQaXpcO8PC0jXzFMr9buEoO58BtrOD3zx92SrWx
u5DO//X95g9tGtWbkD46zOwtingtLG6fwxqagl7QD23Wf4uSkxn3IWy1symky1LT
y+TdtZXRFHF41H+WMHe6
=Fyna
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--
