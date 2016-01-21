X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3389" "Thursday" "21" "January" "2016" "11:43:45" "+0100" "Florent Daigniere" "florent.daigniere@trustmatta.com" "<1453373025.3030.24.camel@trustmatta.com>" "94" "Re: [oss-security] Prime example of a can of worms" "^Date:" nil nil "1" "2016012110:43:45" "[oss-security] Prime example of a can of worms" (number mark "        florent.daig Jan 21   94/3389  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<20160121010506.GA21071@gremlin.ru>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<20151023145631.GA21048@gremlin.ru>" "<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>" "<20160121010506.GA21071@gremlin.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30554 invoked by uid 550); 21 Jan 2016 10:43:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30530 invoked from network); 21 Jan 2016 10:43:31 -0000
Authentication-Results: filter.trustmatta.local; dkim=pass
	reason="1024-bit key; unprotected key"
	header.d=trustmatta.com header.i=@trustmatta.com header.b=R0p6fCXK;
	dkim-adsp=pass; dkim-atps=neutral
X-Spam-ASN:  
Message-ID: <1453373025.3030.24.camel@trustmatta.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trustmatta.com;
	s=dkim2015; t=1453372996;
	bh=kESKeLnCDtZTMJG5jcFEypXlhideGPfS1ktTAU8sZjw=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=R0p6fCXKukX6lSRdPFhmO9YHbaBN2oZwKcXqbV4QT1tfe9SQquGVvbeKLP2vXkL2n
	 LXV29is4/W063ZDrfmGAmTQBPHHHaJt3T/XzliNvBo5bMO8etiB2eN11blpd8+rtJ/
	 Po/MXRnIZ/GDRe2ITct2dkhg70rQQpEZCbnJNkRQ=
In-Reply-To: <20160121010506.GA21071@gremlin.ru>
References: 
	<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	 <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	 <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net>
	 <20151021170113.128d3a8e@silentmaxx>
	 <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
	 <20151023145631.GA21048@gremlin.ru>
	 <CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>
	 <20160121010506.GA21071@gremlin.ru>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-lI58MDbIeGpnLNcmXoII"
Mime-Version: 1.0
X-Envelope-From: <florent.daigniere@trustmatta.com>
Date: Thu, 21 Jan 2016 11:43:45 +0100
From: Florent Daigniere <florent.daigniere@trustmatta.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

--=-lI58MDbIeGpnLNcmXoII
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2016-01-21 at 04:05 +0300, gremlin@gremlin.ru wrote:
> On 2016-01-20 08:45:07 -0700, Kurt Seifried wrote:
>=20
> =C2=A0> I finally got the article written and published, it's at:
> =C2=A0> https://securityblog.redhat.com/2016/01/20/primes-parameters-and-m
> oduli/
>=20
> In that article you wrote:
>=20
> =C2=A0> I think the best plan for dealing with this in the short term
> =C2=A0> is deploying larger primes (2048 bits minimum, ideally 4096
> =C2=A0> bits) right now wherever possible.
>=20
> 4096 bit keys seem to be the absolute minimum, and personally I've
> already moved to 8192 bit keys.
>=20

I'd like to know where you guys picked those numbers from:
http://www.keylength.com/en/compare/=C2=A0suggests that 2048 bits is okay
for everyone but the BSI (at least not past 2016). Surely a
recommendation today should have a higher standard than that.

On the other hand,=C2=A03072 bits seems to be enough for everyone for the
next decade or so.

I haven't found anyone suggesting that bigger groups are either
necessary or worth it. If you want QC proof crypto you need groups of
~16k bits.

My favourite recommendation (ECRYPT=C2=A0II):
http://www.keylength.com/en/3/
where
1024 bits -> level 3 (<<2015)
2048 bits -> level 5 (2020)
3248 bits -> level 7 (2040)
for any of the modelled adversaries.

> Here are some numbers:
>=20
> `openssl dhparam -2 4096` took 1:53:29 to generate (HH:MM:SS);
> `openssl dhparam -5 4096` took 1:43:44;
> `openssl dhparam -2 8192` took 25:51:34;
> `openssl dhparam -5 8192` took 16:51:47.
>=20
> =C2=A0> Why not huge primes?
> =C2=A0> Why not simply use really large primes? Because computation
> =C2=A0> is expensive, battery life matters more than ever and latency
> =C2=A0> will become problems that users will not tolerate.
>=20
> Any and all cryptographic transforms must be expensive - that means
> at least time and electric power.=C2=A0

There is a good reason why no one wants custom-groups in protocol
design. I haven't seen it mentioned much so far so I will spell it out
again:

Custom groups need to be transmitted for each handshake: that's
problematic on most networks (none of the group sizes suggested will
fit on a MTU worth of data) as it will involve fragmentation and
potentially retransmission.

If anything, TLS has proven that it won't work; both because=C2=A0
- no one will use the feature, even if it's present (status-quo with
1024 bits groups today)
- it's impractical for it to be used anywhere where the connectivity is
anything less than perfect (mobile networks, high-latency networks,
...)

K.I.S.S.!

Florent=

--=-lI58MDbIeGpnLNcmXoII
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAABCAAGBQJWoLZhAAoJEOrF6/B6qcKjTfoIAKcQKCkmo0woVq6ziw6ajjAP
cVnLXlhujzw36I5JMqylI+reaLGwcUzvTUXkcbJVCfqInnI6nZHzlFsTdKiw5z9X
P0MiNAu1G+Wt4zsvuBg/0vTIS5kvncPa1BaZlyaPxOJ8TvxR1oDpQdmwZ52bnDB0
rkeyONAbxA/JqczcBBFTvjptfLZxMq1otZS7T4g2Fy7tZbsRBGyG2ezLdfUgyqmW
VEdY5LpXz0a0O+mnDQ2COFqgH2ZKJcUHjHiRTJgZMXfjgmNt6Qaw5AwPEZfDHu4t
NAB9hOc9H6g0J+fQfGbpwdRmymkNyVE8TSOOLvhYBMlUtApJrqnA5Tmp2ckLr6U=
=dLC8
-----END PGP SIGNATURE-----

--=-lI58MDbIeGpnLNcmXoII--
