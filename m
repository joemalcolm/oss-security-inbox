X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2230" "Tuesday" "17" "August" "2021" "18:02:51" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "53" "Re: [oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)" nil nil nil "8" nil nil (number mark "U       fungi@yuggot Aug 17   53/2230  " thread-indent "\"Re: [oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17420 invoked by uid 550); 17 Aug 2021 18:03:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16378 invoked from network); 17 Aug 2021 18:03:06 -0000
Date: Tue, 17 Aug 2021 18:02:51 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20210817180250.qm2d6wicxwjif3jq@yuggoth.org>
References: <20210817151717.m4qgvhye2svlvxmp@yuggoth.org>
 <o474q87p-558p-onp5-19q4-n235o9r12r@vanv.qr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="46um646qurmxamtd"
Content-Disposition: inline
In-Reply-To: <o474q87p-558p-onp5-19q4-n235o9r12r@vanv.qr>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter
 bypass on Netfilter platforms (CVE-2021-38598)

--46um646qurmxamtd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2021-08-17 19:30:21 +0200 (+0200), Jan Engelhardt wrote:
>=20
> On Tuesday 2021-08-17 17:17, Jeremy Stanley wrote:
> >Description
> >~~~~~~~~~~~
> >Jake Yip with ARDC and Justin Mammarella with the University of
> >Melbourne reported a vulnerability in Neutron's linuxbridge driver
> >on newer Netfilter-based platforms (the successor to IPTables).
>=20
> ip_tables is running atop the netfilter API, so.... it's
> not an ordered set with predecessors and successors.

Yes, thanks. It would have been more accurate to draw the comparison
between ebtables and ebtables-nft, which is where the underlying
problem arises. I was trying not to get too into the weeds with
technical detail for the general user audience, who may not be
particularly aware of the names for layer 2 filtering mechanisms,
but I agree this wording is also mildly misleading as a result.

Should I have said "Netfilter-based platforms (the successor to
legacy IPTables)" instead, to differentiate it from Netfilter-based
IPTables?
--=20
Jeremy Stanley

--46um646qurmxamtd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmEb+cRfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkHFBAA3LluktK9eNeTsJgATgmHUWnge/CxdHXDk/NB86Je5F73ACfteW0q8Wxf
rzRqcgaY+D1Fc2yioSxL4df1mK1RRkQ3/JlARHfiY37+BiXrtIIbDO0K3zSr0Uhu
cgUI7TZxb1hM09e7TKBtib675mXpp+z89eRAy6QfQYooyfh+6NqgDM4779Fdbeg3
W5U/K1fTJAMhOc8XtWtZj/MKZvEBywjyvxYn+NvZR6/fpXx28nq+IFSF6H+GdLsE
fWub2aDEuLaZS/JUR5K1GdB03pAXFRbyDAirz+VtTnh+Vcu5AHkog7/vdbZO+QhW
/FlJZsL3IG5vPtZeda9ePcnWOVdHE59cOxzNjPF4lXTypnafZWnV/sn+HHGFTKdx
RfYsu6XSiWWpTyW1FayBPdlMhh83d9go9/c7ZK5chL0mcEc9EkIFxS9dAUeBYiUP
70md10UHVCP/uHGl401QCu/zXVG4Ad3gsAaCNSdVYwSv81ayGeFI8zWMiRel+xPz
W9INSVfHYEdm0UgT4ZjNZOqRGnshZS+6rmEeNmpTibos8Deu4bMxQOdJxOlfby7i
2YT24wxvCdUrUQUD76cIlnSCgXoDCXX4LhQokmfjhbBrSEsMAA/sZlQWKSQCoHF2
3xVaE9gSbZL+Nil3GmEVr0knuYdYnEN4IBl7HeNnbIZ8QUUUcBQ=
=Zdsh
-----END PGP SIGNATURE-----

--46um646qurmxamtd--
