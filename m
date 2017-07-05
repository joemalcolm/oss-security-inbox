X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2214" "Thursday" "6" "July" "2017" "00:02:58" "+0200" "Kristian Fiskerstrand" "k_f@gentoo.org" "<9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>" "56" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070522:02:58" "[oss-security] systemd fails to parse user that should run service" (number mark "        k_f@gentoo.o Jul  6   56/2214  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>" ("<20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9470 invoked by uid 550); 5 Jul 2017 22:04:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7788 invoked from network); 5 Jul 2017 22:03:24 -0000
References: <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>
Message-ID: <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ShhJ6iin7x0KuMx8NljpOeiRAG0aTttco"
Date: Thu, 6 Jul 2017 00:02:58 +0200
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com, Simon McVittie <smcv@debian.org>

--ShhJ6iin7x0KuMx8NljpOeiRAG0aTttco
Content-Type: multipart/mixed; boundary="uLvKV0okNi0PR5mx7Vq8FUguP74SuJ23H";
 protected-headers="v1"
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: k_f@gentoo.org
To: oss-security@lists.openwall.com, Simon McVittie <smcv@debian.org>
Message-ID: <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
References: <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>
In-Reply-To: <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>

--uLvKV0okNi0PR5mx7Vq8FUguP74SuJ23H
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 07/05/2017 11:58 PM, Simon McVittie wrote:
> systemd does have a (public, and publically-archived) mailing list, which
> has a current thread on the subject of this issue.
>=20
> In particular the mail in that thread from Felipe Sateler, and some of
> the discussion on the upstream bug, touches on reasons why neither
> "if anything is not as expected, reject the whole unit" nor the current
> behaviour is right. I suspect the resolution is likely to be something
> in between.

It would be useful with a reference to the thread in question so this
can be further looked into.

--=20
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3


--uLvKV0okNi0PR5mx7Vq8FUguP74SuJ23H--

--ShhJ6iin7x0KuMx8NljpOeiRAG0aTttco
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEtOrRIMf4mkrqRycHJQt6/tY3nYUFAlldYhMACgkQJQt6/tY3
nYX/9gf+JsejdGR4pyZkjiyKWh5y4fCeOsl63iU6hUD1DIpBSyJa32kU1p7eLD7W
yywCIx7eZJQ4IS5eUBT1QsgZ3ciDj2iFQaj6OGuzFAr4QQPH5c5lawcgjxcihWQs
Eq9Cg1/Gf6RAy57KNJdFonKNljIPgBIcnGPtmXZb4LbPCSUxXoklVecZN1NaBR69
6Un83qvgpeh5COAs7tuRYiM8LeTpaIBb42Qk0L2laqzGAOaQIdHPZZ+5p2xeTcas
l/xmMt7W2k1bkNhF3D3fPDTvuZidctepqzFlqBB4qaajS/Yh3uSJewYg1XJtbB5L
RtdUR80ZGHyvkD9A8CaYEmLeFKVeSA==
=8Fl2
-----END PGP SIGNATURE-----

--ShhJ6iin7x0KuMx8NljpOeiRAG0aTttco--
