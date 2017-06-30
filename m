X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2504" "Friday" "30" "June" "2017" "12:41:33" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<1498819293.18870.28.camel@debian.org>" "69" "Re: [oss-security] ISC announces two BIND vulnerabilities" "^Cc:" nil nil "6" "2017063010:41:33" "[oss-security] ISC announces two BIND vulnerabilities" (number mark "        corsac@debia Jun 30   69/2504  " thread-indent "\"Re: [oss-security] ISC announces two BIND vulnerabilities\"\n") "<ffbe986b-312f-039a-e660-8d375b4426c1@isc.org>" ("<ffbe986b-312f-039a-e660-8d375b4426c1@isc.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4018 invoked by uid 550); 30 Jun 2017 10:42:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3993 invoked from network); 30 Jun 2017 10:42:00 -0000
Message-ID: <1498819293.18870.28.camel@debian.org>
In-Reply-To: <ffbe986b-312f-039a-e660-8d375b4426c1@isc.org>
References: <ffbe986b-312f-039a-e660-8d375b4426c1@isc.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-3gZJeGO/x50XhShFxjO9"
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Cc: ISC Security Officer <security-officer@isc.org>
Date: Fri, 30 Jun 2017 12:41:33 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ISC announces two BIND vulnerabilities
To: oss-security@lists.openwall.com

--=-3gZJeGO/x50XhShFxjO9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2017-06-30 at 01:09 -0800, ISC Security Officer wrote:
> On Thursday (29 June) Internet Systems Consortium disclosed two security
> vulnerabilities in BIND.=C2=A0=C2=A0Details on the individual vulnerabili=
ties
> can be found in our knowledge base:
>=20
> =C2=A0 CVE-2017-3142:=C2=A0=C2=A0https://kb.isc.org/article/AA-01504/74/C=
VE-2017-3142
> =C2=A0 CVE-2017-3143:=C2=A0=C2=A0https://kb.isc.org/article/AA-01503/74/C=
VE-2017-3143
>=20
> New software releases have been issued containing these security fixes;
> they are available from our download page at http://www.isc.org/downloads
>=20
As per list policy, and since I'm following these for Debian, here's some m=
ore
details inline for the list.

The vulnerabilities are very similar to the knot one (no CVE yet) found by =
the
same researchers (Synaktiv):

CVE-2017-3142: An error in TSIG authentication can permit unauthorized zone
transfers

An attacker who is able to send and receive messages to an authoritative DNS
server and who has knowledge of a valid TSIG key name may be able to
circumvent TSIG authentication of AXFR requests via a carefully constructed
request packet. A server that relies solely on TSIG keys for protection with
no other ACL protection could be manipulated into:

* providing an AXFR of a zone to an unauthorized recipient
* accepting bogus NOTIFY packets

CVE-2017-3043: An error in TSIG authentication can permit unauthorized dyna=
mic
updates

An attacker who is able to send and receive messages to an authoritative DNS
server and who has knowledge of a valid TSIG key name for the zone and serv=
ice
being targeted may be able to manipulate BIND into accepting an unauthorized
dynamic update.

Regards,
--=20
Yves-Alexis=

--=-3gZJeGO/x50XhShFxjO9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEl0WwInMjgf6efq/1bdtT8qZ1wKUFAllWKt0ACgkQbdtT8qZ1
wKUY/AgApw0Qf7F99Dy+T3AuHXVlRQij2nIOdbbJNfjxHyh0nd+Ix7GP12X916xg
6Klt8AtU5lSsuQmnXP/yc4Chthgj4UtqK7gz3TaWsQLbsvQW+mQcdgHOP3M/uEuS
Ww51iiMkLDz1eGM9yRTGdiXq7Hl7psqaL+0s/y3BQwXv4m/V/tUv/FhP3MFhs6Cl
/8uocDWvqmmpdEt4dtwSM1btQ+nF3L86RgvQ58T3PLuucu+1KTbdp42rJw3U1BRW
ADdodMwKcRYENCI5XJM+wErdTm6PzLjcz+qtBcz5QAZN1KVC4qvzUXXLUL4cKo4o
/2Lyj8Bty02wdYOet6CTfYb2Ec7ffg==
=CTj3
-----END PGP SIGNATURE-----

--=-3gZJeGO/x50XhShFxjO9--
