X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2624" "Thursday" "6" "July" "2017" "00:12:37" "+0200" "Kristian Fiskerstrand" "k_f@gentoo.org" "<65f3c8fc-60f9-a678-1ed4-6461fa7a31f5@gentoo.org>" "67" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070522:12:37" "[oss-security] systemd fails to parse user that should run service" (number mark "        k_f@gentoo.o Jul  6   67/2624  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>" ("<20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>" "<9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18003 invoked by uid 550); 5 Jul 2017 22:17:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11687 invoked from network); 5 Jul 2017 22:13:02 -0000
References: <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>
 <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>
Message-ID: <65f3c8fc-60f9-a678-1ed4-6461fa7a31f5@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="rmgKBWGobcX871WfJkcVjnR3srsetR3hl"
Date: Thu, 6 Jul 2017 00:12:37 +0200
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com, Simon McVittie <smcv@debian.org>

--rmgKBWGobcX871WfJkcVjnR3srsetR3hl
Content-Type: multipart/mixed; boundary="naMHWBcMhAM1bBSWAS1owGE0USImbDxVs";
 protected-headers="v1"
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: oss-security@lists.openwall.com
To: oss-security@lists.openwall.com, Simon McVittie <smcv@debian.org>
Message-ID: <65f3c8fc-60f9-a678-1ed4-6461fa7a31f5@gentoo.org>
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
References: <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>
 <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>
In-Reply-To: <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>

--naMHWBcMhAM1bBSWAS1owGE0USImbDxVs
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 07/06/2017 12:02 AM, Kristian Fiskerstrand wrote:
> On 07/05/2017 11:58 PM, Simon McVittie wrote:
>> systemd does have a (public, and publically-archived) mailing list, which
>> has a current thread on the subject of this issue.
>>
>> In particular the mail in that thread from Felipe Sateler, and some of
>> the discussion on the upstream bug, touches on reasons why neither
>> "if anything is not as expected, reject the whole unit" nor the current
>> behaviour is right. I suspect the resolution is likely to be something
>> in between.
>=20
> It would be useful with a reference to the thread in question so this
> can be further looked into.
>=20

I expect this is the post in question:
https://lists.freedesktop.org/archives/systemd-devel/2017-July/039168.html
,

The post seems to be arguing, without much ambiguity, for a fatal error
on username not existing or not considered valid (which seems like
sensible behavior to me)

--=20
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3


--naMHWBcMhAM1bBSWAS1owGE0USImbDxVs--

--rmgKBWGobcX871WfJkcVjnR3srsetR3hl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEtOrRIMf4mkrqRycHJQt6/tY3nYUFAlldZFUACgkQJQt6/tY3
nYX8xggArhOD0SmPE9bzzubvAa6R5vHPFxSIVDe0NVNbQ5DNOvjDQhaKb+tNZtti
EQlJGqj1Fwo1cfOjtFybcohdM2gDmvgOaow4/HASxoSp9q8S8gmPbbugQqsFcNIY
TNw4wAiEqhbz0+TX9vdZWViFJct6sH2LYdHMz6PSFTfZkzhlwXCz93iwJDRopfPe
1P0LLdkAIFELcjSgQTdIIqZEHPFxzRJaJFR5g/Sr1FwOhy4eBvkAaf3RD7Lr8Fx2
1ICNWYPo2gIqebn995LN36P6CloWH8RPPaCkzSqRh26M2s2mULllHxDWvcJCpiki
ITjBsmr9Y7I0T+DauLnwYusZPJGJZQ==
=2mAZ
-----END PGP SIGNATURE-----

--rmgKBWGobcX871WfJkcVjnR3srsetR3hl--
