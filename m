X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1319" "Friday" "30" "June" "2017" "15:11:50" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<1498828310.18870.32.camel@debian.org>" "40" "Re: [oss-security] ISC announces two BIND vulnerabilities" "^Cc:" nil nil "6" "2017063013:11:50" "[oss-security] ISC announces two BIND vulnerabilities" (number mark "        corsac@debia Jun 30   40/1319  " thread-indent "\"Re: [oss-security] ISC announces two BIND vulnerabilities\"\n") "<1498819293.18870.28.camel@debian.org>" ("<ffbe986b-312f-039a-e660-8d375b4426c1@isc.org>" "<1498819293.18870.28.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5137 invoked by uid 550); 30 Jun 2017 13:12:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4092 invoked from network); 30 Jun 2017 13:12:08 -0000
Message-ID: <1498828310.18870.32.camel@debian.org>
In-Reply-To: <1498819293.18870.28.camel@debian.org>
References: <ffbe986b-312f-039a-e660-8d375b4426c1@isc.org>
	 <1498819293.18870.28.camel@debian.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Fd/O/D/ZsADMZOJbYrKw"
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Cc: ISC Security Officer <security-officer@isc.org>
Date: Fri, 30 Jun 2017 15:11:50 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ISC announces two BIND vulnerabilities
To: oss-security@lists.openwall.com

--=-Fd/O/D/ZsADMZOJbYrKw
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2017-06-30 at 12:41 +0200, Yves-Alexis Perez wrote:
> CVE-2017-3043: An error in TSIG authentication can permit unauthorized dy=
namic
> updates

Sorry, this is a typo. It should be CVE-2017-3143. My apologies to ISC and =
all
for the confusion.
>=20
> An attacker who is able to send and receive messages to an authoritative =
DNS
> server and who has knowledge of a valid TSIG key name for the zone and se=
rvice
> being targeted may be able to manipulate BIND into accepting an unauthori=
zed
> dynamic update.
--=20
Yves-Alexis=

--=-Fd/O/D/ZsADMZOJbYrKw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEl0WwInMjgf6efq/1bdtT8qZ1wKUFAllWThYACgkQbdtT8qZ1
wKVx6Qf/RhqR2aYTfa7KPGosJ0p5ALXVQrYgphN8Hf/6/ZCWvPJYKSaR5Ke1V3pd
8s3FXHx5qh+Gzu8EJPJG8lBgZ2iJZQIUeSzrtBM8J5tM49M9VtOh2UOHCjM5WrA2
mF3wmzsbzgnJnyoea8FJss7wX7i13WoZwlbyWsJ8BDKS7qOxEvjU6x2gbwgY4Cfg
bGrcA/7zaJsejhCbnkFRM0LwvmvwfxcbDijPCr/fI+qNgJHsg1qB4YYQKEi4+XeC
dK8pplY8SV/2q3ieNL3T2QcTyYqFjgvoZ0/gjBBhybWZde/7hP3ZLA2yRb62Kvj7
7XMDFHkGtlvBugXi6eecmiUmWiuphA==
=0Xcx
-----END PGP SIGNATURE-----

--=-Fd/O/D/ZsADMZOJbYrKw--
