X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2791" "Thursday" "22" "October" "2015" "10:01:33" "+0200" "Florent Daigniere" "florent.daigniere@trustmatta.com" "<1445500893.3227.12.camel@trustmatta.com>" "85" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102208:01:33" "[oss-security] Prime example of a can of worms" (number mark "        florent.daig Oct 22   85/2791  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<562869CF.3060106@internot.info>" "<CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24249 invoked by uid 550); 22 Oct 2015 08:01:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24231 invoked from network); 22 Oct 2015 08:01:41 -0000
X-Spam-ASN:  
Message-ID: <1445500893.3227.12.camel@trustmatta.com>
In-Reply-To: <CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>
References: 
	<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	 <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	 <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net>
	 <20151021170113.128d3a8e@silentmaxx>
	 <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
	 <562869CF.3060106@internot.info>
	 <CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Fo2tjmXEKOpXn8DhhT0W"
Mime-Version: 1.0
X-Envelope-From: <florent.daigniere@trustmatta.com>
Date: Thu, 22 Oct 2015 10:01:33 +0200
From: Florent Daigniere <florent.daigniere@trustmatta.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

--=-Fo2tjmXEKOpXn8DhhT0W
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2015-10-21 at 23:09 -0600, Kurt Seifried wrote:
> On Wed, Oct 21, 2015 at 10:45 PM, Joshua Rogers <oss@internot.info>
> wrote:
>=20
> > On 22/10/15 15:27, Kurt Seifried wrote:
> > > Ideally we'd like
> > > to see people using different primes (e.g. hardware manufacturers
> > > not
> > using
> > > the same primes as everyone else) and where possible people
> > > needing more
> > > security (e.g. a VPN hosting provider) should generate their own
> > > keys
> > > securely.
> > Could it be possible to generate a new prime in the background, and
> > when
> > it has been generated, on the next reboot use that one instead? And
> > if
> > there is not enough time for the new prime to be generated, it
> > falls
> > back to the old one?
> >=20
> > I agree that manufacturers should be using a different prime per,
> > at
> > least, batch of products.
> >=20
> >=20
> My fear would be device makers getting it horribly wrong on the
> devices in
> question. E.g.:
>=20
> http://www.theregister.co.uk/2015/10/21/german_govt_mulls_security_te
> sts_of_sohopeless_routers/
>=20
> Having a large pool of known good primes would be easier for them to
> use I
> suspect. Sadly we can't let perfect be the enemy of the good, or in
> this
> case the "not completely terrible".
>=20

I still don't get why people are pushing for "non-standard" groups.
What you need is a good security margin...

No one should be using 1024bit DH groups anymore and 2048 bit groups
should have disappeared *before* ~2020

http://www.keylength.com/en/3/

If we want PFS to work in practice we need "auditable" deployments...
and that won't be possible with custom DH groups (verifying the
security/suitability of a group is non-straightforward as the rest of
the thread has pointed out).

Really, what are we after here?=C2=A0
- Preventing pre-computation? Pick a larger group.
- Avoiding "massive" problems in case the standardized groups do turn
out to be unsuitable (sub-groups, ...)?
- Something else?


Florent=

--=-Fo2tjmXEKOpXn8DhhT0W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAABCAAGBQJWKJfdAAoJEOrF6/B6qcKjfTwH/Arr3a8slf9K8H5bqtg4cIlV
m5JjxK3YcA1KZYCNp9ERF4z3yhKUJfxXtzdo4sZdMUGl/njoI6qTvsXivoYW1vGV
U7ZlRiAWoOsjExKPiI+DaLGoS4qx5AADsFSmAS3yd5PZqK+Bmdg8XGGnyJ01PSqA
CJftaDaqdhXdu6/V2AtalVSMwKg9ERvEszXCkNM69c5Tb46zdQa4bAtbqB+2RCpY
B7POeMQzN8wUGGFYTmfyfKNoPS4YmpcXcYzHr6wvhcIL/m4yHNtSnbMwdTL54xxY
h46ik/i88vX/SHORzXg602ie+stsI9f8twrFE9ZA5m2PvIaDrg5HrmpwlnUruyQ=
=/ax2
-----END PGP SIGNATURE-----

--=-Fo2tjmXEKOpXn8DhhT0W--
