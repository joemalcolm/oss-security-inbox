X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4439" "Thursday" "21" "January" "2016" "10:15:55" "-0500" "Steve Grubb" "sgrubb@redhat.com" "<1793542.7Axp6M92oG@x2>" "127" "Re: [oss-security] Prime example of a can of worms" "^Cc:" nil nil "1" "2016012115:15:55" "[oss-security] Prime example of a can of worms" (number mark "        sgrubb@redha Jan 21  127/4439  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<1453373025.3030.24.camel@trustmatta.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<20160121010506.GA21071@gremlin.ru>" "<1453373025.3030.24.camel@trustmatta.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11267 invoked by uid 550); 21 Jan 2016 15:16:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10209 invoked from network); 21 Jan 2016 15:16:12 -0000
Message-ID: <1793542.7Axp6M92oG@x2>
Organization: Red Hat
User-Agent: KMail/4.14.10 (Linux/4.2.3-203.fc22.x86_64; KDE/4.14.14; x86_64; ; )
In-Reply-To: <1453373025.3030.24.camel@trustmatta.com>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <20160121010506.GA21071@gremlin.ru> <1453373025.3030.24.camel@trustmatta.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2728256.z3Y7yq03Jr"; micalg="pgp-sha1"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: Florent Daigniere <florent.daigniere@trustmatta.com>
Date: Thu, 21 Jan 2016 10:15:55 -0500
From: Steve Grubb <sgrubb@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

--nextPart2728256.z3Y7yq03Jr
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Thursday, January 21, 2016 11:43:45 AM Florent Daigniere wrote:
> On Thu, 2016-01-21 at 04:05 +0300, gremlin@gremlin.ru wrote:
> > On 2016-01-20 08:45:07 -0700, Kurt Seifried wrote:
> >=20
> >  > I finally got the article written and published, it's at:
> >  > https://securityblog.redhat.com/2016/01/20/primes-parameters-and-m
> > oduli/
> >=20
> > In that article you wrote:
> >=20
> >  > I think the best plan for dealing with this in the short term
> >  > is deploying larger primes (2048 bits minimum, ideally 4096
> >  > bits) right now wherever possible.
> >=20
> > 4096 bit keys seem to be the absolute minimum, and personally I've
> > already moved to 8192 bit keys.
>=20
> I'd like to know where you guys picked those numbers from:
> http://www.keylength.com/en/compare/ suggests that 2048 bits is okay
> for everyone but the BSI (at least not past 2016). Surely a
> recommendation today should have a higher standard than that.
>=20
> On the other hand, 3072 bits seems to be enough for everyone for the
> next decade or so.

I think that is assuming that quantum computers are not brought to market a=
ny=20
time soon. Over the summer the NSA's Suite B page kind of backpeddled on th=
e=20
ECC requirements and refocused on RSA. I attended a speech this fall where=
=20
NIST talked about what quantum computers will do. The presentation is here =
but=20
does not have speakers notes:

http://csrc.nist.gov/news_events/cif_2015/research/day1_research_200-250pt3=
.pdf

This is the notes that I took while listening to the speech:

This panelist talked about quantum crypto. The issue is that quantum comput=
ers=20
could use Shor's algorithm and Grover's algorithm to kill PKI. In the futur=
e=20
key sizes could be around a million bits. This will mean changes to network=
=20
protocols. Its estimated that a key space of N can be search in the square=
=20
root of N time. So, in current technology, if you need 128 bits of strength=
,=20
you will need to square it to get the key size.

Hallway discussions mentioned that ECC is dead due to trust issues and fuzz=
y=20
IP issues which slowed vendor uptake. There was a mention of RSA officially=
=20
being allowed to go to 16k key sizes.

-Steve


> I haven't found anyone suggesting that bigger groups are either
> necessary or worth it. If you want QC proof crypto you need groups of
> ~16k bits.
>=20
> My favourite recommendation (ECRYPT II):
> http://www.keylength.com/en/3/
> where
> 1024 bits -> level 3 (<<2015)
> 2048 bits -> level 5 (2020)
> 3248 bits -> level 7 (2040)
> for any of the modelled adversaries.
>=20
> > Here are some numbers:
> >=20
> > `openssl dhparam -2 4096` took 1:53:29 to generate (HH:MM:SS);
> > `openssl dhparam -5 4096` took 1:43:44;
> > `openssl dhparam -2 8192` took 25:51:34;
> > `openssl dhparam -5 8192` took 16:51:47.
> >=20
> >  > Why not huge primes?
> >  > Why not simply use really large primes? Because computation
> >  > is expensive, battery life matters more than ever and latency
> >  > will become problems that users will not tolerate.
> >=20
> > Any and all cryptographic transforms must be expensive - that means
> > at least time and electric power.=20
>=20
> There is a good reason why no one wants custom-groups in protocol
> design. I haven't seen it mentioned much so far so I will spell it out
> again:
>=20
> Custom groups need to be transmitted for each handshake: that's
> problematic on most networks (none of the group sizes suggested will
> fit on a MTU worth of data) as it will involve fragmentation and
> potentially retransmission.
>=20
> If anything, TLS has proven that it won't work; both because=20
> - no one will use the feature, even if it's present (status-quo with
> 1024 bits groups today)
> - it's impractical for it to be used anywhere where the connectivity is
> anything less than perfect (mobile networks, high-latency networks,
> ...)
>=20
> K.I.S.S.!
>=20
> Florent

--nextPart2728256.z3Y7yq03Jr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEABECAAYFAlag9isACgkQCfgKaXAKiuYYcwCfTtpTCyDaq4mp5itcpo4ZXtq4
Ep0AoJSX3pNiQWbip3+GDF5bRr4vfURG
=E6xP
-----END PGP SIGNATURE-----

--nextPart2728256.z3Y7yq03Jr--

