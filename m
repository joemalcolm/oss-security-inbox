X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1656" "Tuesday" "12" "May" "2015" "10:55:59" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150512085559.GA9611@kronk.local>" "50" "[oss-security] CVE Request: phpbb open redirect" nil nil nil "5" "2015051208:55:59" "[oss-security] CVE Request: phpbb open redirect" (number mark "        alessandro@g May 12   50/1656  " thread-indent "\"[oss-security] CVE Request: phpbb open redirect\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7448 invoked by uid 550); 12 May 2015 08:56:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7428 invoked from network); 12 May 2015 08:56:12 -0000
Message-ID: <20150512085559.GA9611@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Tue, 12 May 2015 10:55:59 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: phpbb open redirect
To: oss-security@lists.openwall.com

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

from the phpbb 3.0.14 release highlight:

> Security: An insufficient check allowed users of the Google Chrome browse=
r to
> be redirected to external domains (e.g. on login). Thanks to Mathias Karl=
sson
> (avlidienbrunn) for bringing this to our attention.

https://wiki.phpbb.com/Release_Highlights/3.0.14

The patch seems to be this one:
https://github.com/phpbb/phpbb/commit/1a3350619f428d9d69d196c52128727e27ef2=
f04

Honestly, there doesn't seem to be much information publicly available, but=
 can
a CVE be assigned for this please?

Thanks

--FL5UXtIhxfXey3p5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVUcAcAAoJEK+lG9bN5XPL1XQP/3EBCbuLPoNkVgEufKNAotDy
Qd+Bk4KOUJwkKGBhgvv/wp6FRua6o67LIiP6SIEQM2TG0T+2rj17XcpJszUoeCyi
fJzSBDRGVCiJAj6t62bx+mWq4Bzx2MQFKyntn2Ra7P9fdJePcLPyx6rnnHM09Gw8
oGWD8caVijSKczTPZtDy1IVad3yd3Q1n9MogbJ3RbVMkaecSapaFGb2YEmIFgBPZ
BaU75/1fH0OH/glPPj4Yq5MLdj5XvK9yIbeS1DCGfa7F4uVnGoA+mDiVpinh1Bf7
9Ec1vyLLQwrqJTttLN466m472AqDQpW6BYxGgwcyE7daM7KCmVKXL+SpYfJT7gbN
VUpRTjZsTLm2mo7aOOIBJrnKUcoDHIOzufmEWXm11eK7PJuH9XINOP8JGsH1KCIM
zX58v1FmvdVzRm2TtdlDSBZfBldZ96nb8zW5ny99JV0hG8b9+pcJOOI+vLlpxg9p
wLg3tmtahW1f0Thmiiq18IxPWOqufOdhD3V1Gv+NgvmyKu/bQ2UApT/Et2jT0Kcm
mlotsRJ8HZM0Vgqdhpu79BmWnlzXs2AXuoYmJ7CWSt2SoRYo9T4IHBYPHihy4QBE
y9HD5TXsm83QGLSF0AMh6cml+xjzJb4vn8idjYZ3/ZOLtPhRunNC0sTP7NB9VtQu
c2LzZya/OoLzLPpQ/fnZ
=+c7E
-----END PGP SIGNATURE-----

--FL5UXtIhxfXey3p5--
