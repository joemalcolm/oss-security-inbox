X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4607" "Friday" "23" "June" "2017" "21:54:57" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170624015457.GA31145@grsecurity.net>" "97" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^Cc:" nil nil "6" "2017062401:54:57" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        spender@grse Jun 23   97/4607  " thread-indent "\"[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12012 invoked by uid 550); 24 Jun 2017 12:14:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5977 invoked from network); 24 Jun 2017 01:55:10 -0000
Message-ID: <20170624015457.GA31145@grsecurity.net>
References: <20170624005003.GB27479@grsecurity.net>
 <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
In-Reply-To: <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com, pageexec@freemail.hu
Date: Fri, 23 Jun 2017 21:54:57 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an
 ignored Secure Boot bypass / rootkit method
To: Linus Torvalds <torvalds@linux-foundation.org>

--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 23, 2017 at 06:04:00PM -0700, Linus Torvalds wrote:
> On Fri, Jun 23, 2017 at 5:50 PM, Brad Spengler <spender@grsecurity.net> w=
rote:
> >
> > BTW, we're happy to go toe-to-toe with you here in public on actual fac=
ts
> > instead of pathetic ad hominems.
>=20
> Quite frankly, I'd much rather see *you* actually send in patches that
> are acceptable for inclusion, something you've never done.
>=20
> As it is, other people have tried to clean up parts of the grsecurity
> patches, and tried to make them acceptable.
>=20
> Wouldn't it be nice if you actually tried to make the baseline actually b=
etter?

Are you delusional?  Sorry, you don't get to weasel your way out of=20
calling us clowns, that our code is garbage, with this weak reply where=20
you can pretend you didn't just say those things and now would love for=20
us to provide our "garbage" code directly.  Also you might be in=20
confusion as to the extent to which KSPP is "cleaning up" parts of our=20
code -- they're definitely introducing bugs and renaming variables.=20=20
Other than that, they have a tendency to misrepresent the source of=20
their ideas, so I can understand the cause of your confusion.  This, for=20
instance: http://www.openwall.com/lists/kernel-hardening/2017/06/20/34=20
was simply someone realizing we had updated the code they previously=20
copy+pasted, and copy+pasted the newer version.  He is being funded to=20
do this.  He even emailed me for help figuring out the code he was being
paid to copy+paste.

Wouldn't it be nice if you didn't demand free work of us in our free=20
time? We publicly gave permission for any company involved in the KSPP=20
to publish the private details of any supposed offers made to us,=20
including any financial terms.  No such offers have ever materialized in=20
public, I wonder why that is?

Until you acknowledge the KSPP is business competition dreamed up by=20
Google, who made a conscious decision somewhere higher up in the company=20
than Kees to compete with us instead of cooperating with us, there is no=20
negotiation. You thought you'd get away with it by being able to=20
continue using our own test patches against us, and now look at the mess=20
you've all created.  How many dozens of incompetent people are you going=20
to fund full time to avoid getting help from the people with real=20
knowledge?  Linux's technical debt is only going to increase, and when=20
the KSPP contributors veer into original idea territory (which they're=20
soon going to have to do a lot more of), the results make Linux look as=20
dumb as OpenBSD preventing NOP-sliding into ROP gadgets.

If you really wanted our help, you would know how to get it -- we've posted
about it publicly (and I'll publish it here too for the record if this
mail is allowed through despite being totally off-topic and non-technical):
1) Forget 'bugs are bugs'
2) Stop obfuscating commit messages
3) Actually put someone (or someones) in charge of security, start having
actual responsibility instead of pretending you guys are just doing the
work in your free time.  If Jon Corbet has to submit a fix himself, somethi=
ng
is clearly broken.
4) Have a basic level of respect
5) Fund our work so that we have the free time to help out.  As it stands,
any time spent helping takes away from our own work (which becomes the
security of Linux a decade from now, quite literally).

It's that simple, but you (collectively) seem to be unwilling to do any of
the above.

-Brad

--YiEDa0DAkWCtVeE4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJZTcZqAAoJEETRwPglJf5JlgAP/jJvSmRQ++pQWvyEzaAkcUg3
N8cYnTw1fN6SEJMmxIrSO/pceZTTPf07DJMR7XXMYcch+OzlRekvJ7pvgKUATMyx
J7nZ6UTJhx1zyjdDZlN/NZYtoNTOIO3kv7e/ck1WOTfnzsrlzgBNCrGAh/sJW0JU
7vwn7vfeAvK2FjeJkp7y9sxPwGaH5rmci8W5GY60OIYysRahFmLx/6t7KhG7A0hO
zZdlYTi6KcNVC56CxpM2gyBYoL5mo9ckgwb4vdQz1bxmEMqr3NN3VbJE6fWq7FpI
xsRhYXW6tEOLVCJ3P0/AKlWKBEvqpgSQSkmnvlQWwUumOrAFwrNe8h0hWsJRuDcZ
0jTDV4bV9jHe1pBRVJBgeMczcWPib2Ws8UAkjrdQ0apY57vCGIeI2wj5l/g2nJeo
HYHbMsABq7f3nl1pqgRo2/5aEw7oToC0bu1FuYAfuQJleC03covGteHwOGUzrgyl
vB4fKVJyhW6h3At1MaBDNMIj3uRVLlbWMMGg4NaF5xpZl8sWiBb0tV5XP79Uv5cb
DaMv7XXNV2B7XWCKmOp0jH9LhOfaVZruOioCYBZe+wgQhX0Rre+WaKuOmdVdLYIN
PPUEKiz1sv14DbBe4IF0eyCP0WWv+7Cg4HL2AD+pcGV9D3mxw4fpxvcmRcu6HmWn
/5FUmIwAKs7WJtUmERve
=FVK2
-----END PGP SIGNATURE-----

--YiEDa0DAkWCtVeE4--
