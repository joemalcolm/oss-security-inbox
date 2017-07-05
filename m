X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2322" "Thursday" "6" "July" "2017" "00:06:03" "+0200" "Kristian Fiskerstrand" "k_f@gentoo.org" "<94fcbfb6-70a5-348f-3f5c-ef5f6aec00fe@gentoo.org>" "59" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070522:06:03" "[oss-security] systemd fails to parse user that should run service" (number mark "        k_f@gentoo.o Jul  6   59/2322  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<1499267174.28229.1.camel@gmail.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<201707051202.v65C2NDB005864@room101.nl.oracle.com>" "<20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>" "<1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>" "<1499267174.28229.1.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3452 invoked by uid 550); 5 Jul 2017 22:12:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20402 invoked from network); 5 Jul 2017 22:06:27 -0000
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <201707051202.v65C2NDB005864@room101.nl.oracle.com>
 <20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>
 <1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>
 <1499267174.28229.1.camel@gmail.com>
Message-ID: <94fcbfb6-70a5-348f-3f5c-ef5f6aec00fe@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <1499267174.28229.1.camel@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="hSMFR7wnIpBBNTC336lnGRpVXPsDDbD5O"
Date: Thu, 6 Jul 2017 00:06:03 +0200
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com, Daniel Micay <danielmicay@gmail.com>

--hSMFR7wnIpBBNTC336lnGRpVXPsDDbD5O
Content-Type: multipart/mixed; boundary="s48MV0cKuc7ce9kajjmx0CDUe35u4faa1";
 protected-headers="v1"
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: k_f@gentoo.org
To: oss-security@lists.openwall.com, Daniel Micay <danielmicay@gmail.com>
Message-ID: <94fcbfb6-70a5-348f-3f5c-ef5f6aec00fe@gentoo.org>
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <201707051202.v65C2NDB005864@room101.nl.oracle.com>
 <20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>
 <1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>
 <1499267174.28229.1.camel@gmail.com>
In-Reply-To: <1499267174.28229.1.camel@gmail.com>

--s48MV0cKuc7ce9kajjmx0CDUe35u4faa1
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 07/05/2017 05:06 PM, Daniel Micay wrote:
> https://github.com/shadow-maint/shadow/blob/master/libmisc/chkname.c#L49
>=20
> POSIX also says "." is a portable character, which isn't allowed by
> shadow either. What are distributions using to provide useradd if not
> shadow?

At least Gentoo has patched shadow to allow dot in username since 2005:
https://gitweb.gentoo.org/repo/gentoo/historical.git/commit/?id=3Dbe804d756=
a1834932c05896a87e6ca2e7c602038

--=20
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3


--s48MV0cKuc7ce9kajjmx0CDUe35u4faa1--

--hSMFR7wnIpBBNTC336lnGRpVXPsDDbD5O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEtOrRIMf4mkrqRycHJQt6/tY3nYUFAlldYssACgkQJQt6/tY3
nYVYdwgAiDFutwKIe9uVKbZhh43SewYE9DLTJDOSOLnNSMtZwAUYYrJa13TwL2sq
zPdYj6LIoc7Q+m4vRRU3wJ7Enh6T3+IcMGY6z5mHultTqXF4hKnh1KqE+bcfym40
hfOtHoO0YsQLKTWNUg013LACetYIf0fpL+r0KN+r/zJQyCWsGLcWD4Bljxfb9gSa
49Vku/Bq9n08GXpD6TMavrkPNLMvmiT0oaxOI9Pfc2FgSBMMOOojkRw9M/c0eD3E
9iPUBYYF2DUii6G308YAWdM0X3wZN+HEgHlaA/G3Z/P5qNTfu/yy8xh/4g3uhXzF
kliJtPOoom4lcoQ2ZhvPqXJ2OtBR4w==
=XxbY
-----END PGP SIGNATURE-----

--hSMFR7wnIpBBNTC336lnGRpVXPsDDbD5O--
