X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1838" "Wednesday" "20" "January" "2016" "19:12:37" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160120191237.55100e02@pc1>" "52" "Re: [oss-security] Prime example of a can of worms" "^Date:" nil nil "1" "2016012018:12:37" "[oss-security] Prime example of a can of worms" (number mark "        hanno@hboeck Jan 20   52/1838  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty1Rp1m=qTr7Y+JGfFwAO3Q7nFwWdYGd6-Nb7N==DcZ-HA@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<20151023145631.GA21048@gremlin.ru>" "<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>" "<87vb6o5fsm.fsf@alice.fifthhorseman.net>" "<CANO=Ty0shFs5oAykxDPRsfMAw65bnEwCN7_m_df4j61XEpthBQ@mail.gmail.com>" "<87lh7k5dxs.fsf@alice.fifthhorseman.net>" "<CANO=Ty1Rp1m=qTr7Y+JGfFwAO3Q7nFwWdYGd6-Nb7N==DcZ-HA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5204 invoked by uid 550); 20 Jan 2016 18:12:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5183 invoked from network); 20 Jan 2016 18:12:10 -0000
Message-ID: <20160120191237.55100e02@pc1>
In-Reply-To: <CANO=Ty1Rp1m=qTr7Y+JGfFwAO3Q7nFwWdYGd6-Nb7N==DcZ-HA@mail.gmail.com>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	<20151019193411.GA15710@hunt>
	<87eggqmta9.fsf@alice.fifthhorseman.net>
	<20151021170113.128d3a8e@silentmaxx>
	<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
	<20151023145631.GA21048@gremlin.ru>
	<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>
	<87vb6o5fsm.fsf@alice.fifthhorseman.net>
	<CANO=Ty0shFs5oAykxDPRsfMAw65bnEwCN7_m_df4j61XEpthBQ@mail.gmail.com>
	<87lh7k5dxs.fsf@alice.fifthhorseman.net>
	<CANO=Ty1Rp1m=qTr7Y+JGfFwAO3Q7nFwWdYGd6-Nb7N==DcZ-HA@mail.gmail.com>
X-Mailer: Claws Mail 3.13.1 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-13917-1453313518-0001-2"
Date: Wed, 20 Jan 2016 19:12:37 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-13917-1453313518-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 20 Jan 2016 11:07:19 -0700
Kurt Seifried <kseifried@redhat.com> wrote:

> Yes it would be bad:
>=20
> https://blog.shodan.io/duplicate-ssh-keys-everywhere/
>=20
> There was another analysis with even more worrying numbers but I
> can't find it.

Not sure if that's what you meant, but may be:
http://blog.sec-consult.com/2015/11/house-of-keys-industry-wide-https.html

The more worrying part of that one is that they have not only found
these in the wild, they also extracted the private keys from publicly
available firmware images (and afaik plan to publish them).

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-13917-1453313518-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWn84VAAoJEKWIAHK7tR5CF1kQAL5Cins2+QOszyZXB6DotFwM
5fIw3wGBsDtKCCgcjsw74vzHyHCK6EJKG4MlbUP+O9kAgCHTFfWKrimvLrkACp4y
p5nxV3h59aieq1IXc9SzH1ndLOHRzqipQxhT05URTInPvl/jM2NjnDWzqyP3OB9F
zmS8g1p2D1E9ns3ATmKHPt7kTmkEbyqKG5msaKTExxrtYKhNM6k1mjFhbXWuPnXU
aAb+HxyBHi5PNp4bmhqnKm+weXEJewj1AXHWz579YfevoJpp33BfjwYrN8zU0X2d
e444ExQAseeEBa+Ca1ymIKCXm3MTWVf8Ru8q2hhxp/TMR1/J1tECFEazWVRYDxtr
mck4eHVBGH7hMo4x+GDcFacx6qX8zxTaIhbrSoqpSWGXfbPa484Qr4gPSJf9SY4O
y2bLtg8eHEI7EjlI+0pX9Mjgbv+BD1KSoDj/EIaYt8Ci6tRykG4qvjbZlLuny7qp
hXlas7qmNDAt4r7jj0Wbupl+FpJJlJK/3DSPJGOKRmWb2fql2mwCXbbmRWxex1jH
ELeqlzeBrsX8tCkbZhlEXiG3j38WHhk0YpHuiU8q1MJMks5fSvxo9/cPDu/4kCiM
nNdDXC5Ea9GvFfed+fQexQ0o2ifO3Wi38ctfFwKBdgbI4nRsO2keLl/gupaj8gup
+Mx/PJpFMgHt8PS5DtMg
=1dDn
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-13917-1453313518-0001-2--
