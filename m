Received: (qmail 1150 invoked by uid 550); 10 Apr 2024 16:24:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30102 invoked from network); 10 Apr 2024 11:28:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712748523;
	bh=C7smXj6fAvc56ajUysaKLRnLR1faKWNq0lLdpipOwQg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RyvIRazaulrodWU6Gm71i2cfn4EbSXUp1K0F7KJgFfKbaIA9U8Lv54FeKVvqNpele
	 7WsNAd5UrzBvg1rK1yjVndRgYelisXCt9/EtAk4J9zGgX+RPNOhEJ+5cxzsQ+oAtiN
	 qj2nAKygUE7hR5JaQOmoHGLbecaS9jj1IX96Igzzo2sOOix8kljbUr+wZpoOXplWEB
	 I6IyEnsVB8a1XurAaDH+PRF9D5uJRvOA/G+gBgBN95dxlblPov0TwNqHp0hbeGZ40i
	 gRuj8WV1Q4MQxw+84jdN8EScrIKJ5D5+xGZ7PajkO5wq02fGczOL+qHPY/YqiuCoTv
	 j4nHySpwKBbmQ==
Date: Wed, 10 Apr 2024 13:28:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: oss-security@lists.openwall.com
Cc: Sam James <sam@gentoo.org>, Joey Hess <id@joeyh.name>,
	Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org,
	secalert@redhat.com, team@security.debian.org
Message-ID: <ZhZ35yK_jt2nlegH@debian>
References: <ZhYEpAFolwefRv7X@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jJony+0CH/rdKvCD"
Content-Disposition: inline
In-Reply-To: <ZhYEpAFolwefRv7X@debian>
Subject: [oss-security] Re: Analysis on who is Jia Tan, and who he could work for, reading
 xz.git

--jJony+0CH/rdKvCD
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Apr 2024 13:28:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: oss-security@lists.openwall.com
Cc: Sam James <sam@gentoo.org>, Joey Hess <id@joeyh.name>,
	Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org,
	secalert@redhat.com, team@security.debian.org
Subject: Re: Analysis on who is Jia Tan, and who he could work for, reading
 xz.git

On Wed, Apr 10, 2024 at 05:16:52AM +0200, Alejandro Colomar wrote:
> Hi!
>=20
> Regarding <https://tukaani.org/xz-backdoor/>
>=20
> I've been researching xz.git to learn about this malicious actor, and
> who he might have worked for.
>=20
> This Jia Tan seems to work mostly with the +0800 timezone:
>=20
> 	$ git log --all --author 'Jia Tan' \
> 	| grep ^Date \
> 	| grep -o '[+-][0-9][0-9][0-9]0' \
> 	| sort \
> 	| uniq -c;
> 	      4 +0200
> 	     10 +0300
> 	    676 +0800
>=20
> According to <https://www.timeanddate.com/time/map/>, in the summer,
> +0800 corresponds to China, or Taiwan, or Hong Kong, or Irkutsk (Russia),
> or Philippines or other small countries around it.  None of the regions
> in +0800 use DST.

For completeness, the list of tz database time zones that have +0800,
according to
<https://en.wikipedia.org/wiki/List_of_tz_database_time_zones>, are:

AQ 	Antarctica/Casey
BN 	Asia/Brunei
MN 	Asia/Choibalsan
CN 	Asia/Chongqing
CN 	Asia/Chungking
CN 	Asia/Harbin
HK 	Asia/Hong_Kong
RU 	Asia/Irkutsk
MY 	Asia/Kuala_Lumpur
MY,=E2=80=89BN 	Asia/Kuching
MO 	Asia/Macao
MO 	Asia/Macau
ID 	Asia/Makassar
PH 	Asia/Manila
CN 	Asia/Shanghai
SG,=E2=80=89MY 	Asia/Singapore
TW 	Asia/Taipei
ID 	Asia/Ujung_Pandang
MN 	Asia/Ulaanbaatar
MN 	Asia/Ulan_Bator
AU 	Australia/Perth
AU 	Australia/West
HK 	Hongkong
CN 	PRC
TW 	ROC
SG 	Singapore

>=20
> +0300 corresponds to, among others, Israel and Moscow, and then a bunch

And the time zones that have +0300 in the summer and +0200 in the
winter are:

EG 	Africa/Cairo
LB 	Asia/Beirut
CY 	Asia/Famagusta
PS 	Asia/Gaza
PS 	Asia/Hebron
IL 	Asia/Jerusalem
CY 	Asia/Nicosia
IL 	Asia/Tel_Aviv
EG 	Egypt
GR 	Europe/Athens
RO 	Europe/Bucharest
MD 	Europe/Chisinau
FI,=E2=80=89AX 	Europe/Helsinki
UA 	Europe/Kiev
UA 	Europe/Kyiv
AX 	Europe/Mariehamn
CY 	Europe/Nicosia
LV 	Europe/Riga
BG 	Europe/Sofia
EE 	Europe/Tallinn
MD 	Europe/Tiraspol
UA 	Europe/Uzhgorod
LT 	Europe/Vilnius
UA 	Europe/Zaporozhye
IL 	Israel

--=20
<https://www.alejandro-colomar.es/>

--jJony+0CH/rdKvCD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYWd+cACgkQnowa+77/
2zJAOBAAh/41XJvL5kml6AUMrmbX2z//oSvnz7X7ztsXPZ6PK2XGI0iOYbobCK3A
pkgBYBq3ZmpdIja7+eMtZMJbHUFzvHqH575sV0VDnbbWdrKqlI18dVblZLhtTHXU
leT6oh6lfLW8P6L9myFXW0PLrSLCFZCYTazBZeNMawXfLWT/gbXxhd8H+LDjJTej
RFo9p5ZUhiy3eFxFlfc2QvaLbsFLNZ69BOxdn4q37OJDHsxgNE70FnOyFXoPRRo4
Pm1t63QlaS1aC80n3MZY9XrtbJ2Z6aBEYnHqsOuqP940SqFsCuJSh3thaXy00/XY
/7538EYVWa7HUwW0n6sU2L+9PabIqrIgYM8wrDox5NlXGumD+lZ6JnsuU6LGtSd0
g6I0z55Ic0XT8TsWkSrbCpK5DnyeUBePz1N29ZEJSEot2E35Ms3ptEwV4Oi0MySP
gr4UvigIREJyjrHslBNn1uDmgRA3JBokXqVa84NgONd8LHUfpxrhpAcntkv+3ouX
FHq8eLeSLwpoJOqKBmrVXWNqBS2TPUen6CN2hNI9CaxPTrF4l6AYzSPZckiCtIr+
qaXqFPFpdRFn2Hj1fS/UrmU0/h4Z7bdC55yqAKZ5ZMGJcuK1hI2DhRJxdyVDhkjk
6Ni6oEJOT3MsL8taUTkSkyyFUchmVCoZpCTCpLDy5zSGxWBmi9w=
=HoJY
-----END PGP SIGNATURE-----

--jJony+0CH/rdKvCD--
