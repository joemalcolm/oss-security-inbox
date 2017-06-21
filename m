X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7097" "Wednesday" "21" "June" "2017" "08:25:26" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170621122526.GA32701@grsecurity.net>" "139" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062112:25:26" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        spender@grse Jun 21  139/7097  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<14558692.afnJ5aRU9J@wanheda>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17935 invoked by uid 550); 21 Jun 2017 13:10:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30557 invoked from network); 21 Jun 2017 12:25:38 -0000
Message-ID: <20170621122526.GA32701@grsecurity.net>
References: <20170619152843.GC7769@localhost.localdomain>
 <14558692.afnJ5aRU9J@wanheda>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
In-Reply-To: <14558692.afnJ5aRU9J@wanheda>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 21 Jun 2017 08:25:26 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 21, 2017 at 12:46:28PM +0200, Agostino Sarubbo wrote:
> On Monday 19 June 2017 08:28:43 Qualys Security Advisory wrote:
> > III. Solutions
> > - Recompile all userland code (ld.so, libraries, binaries) with GCC's
> >   "-fstack-check" option, which prevents the stack-pointer from moving
> >   into another memory region without accessing the stack guard-page (it
> >   writes one word to every 4KB page allocated on the stack).
>=20
> For the record, Gentoo Hardened enables by default -fstack-check=3Dspecif=
ic

I'd also like to mention for the record, that despite tweets like:
https://twitter.com/kurtseifried/status/876818809079816193
"CVE-2017-1000377 Oh you thought running GRsecurity PAX was going to save=20
you?"
https://twitter.com/GentooHardened/status/877309872714522624
(the latter apparently having been removed, while the former is
still going strong solely due to the stubbornness of its author)

grsecurity was the only project without a valid CVE assigned to it.

Kurt Seifried of Red Hat chose to make use of the 4 weeks he had in=20
private to assign a bogus CVE against grsecurity (let's ignore that Kurt=20
thinks "GRsecurity" is a vendor and "PAX" is a product), then shot off=20
with a claim completely opposite from that present in the advisory.=20=20
Despite being called out on it by numerous people in public, and despite=20
my offering in private to allow him to correct his own almost=20
gleefully-published lies, he's instead chosen to waste two full days of=20
our time and that of several others, including Qualys, who for the public=20
record did not request the CVE against grsecurity.  Kurt Seifried of Red=20
Hat chose to do it himself, and even provided private emails=20
demonstrating as such.

In my view, this taints the CVE process when someone apparently so
biased fails to take responsibility for their own actions, and uses their
position as judge, jury, and executioner of the DWF/CVE process to dole
out damaging claims that are in direct opposition to what was stated in
the advisory in the first place, for anyone who had read it at all.

Either Kurt Seifried of Red Hat didn't read the advisory at all in those
4 weeks, or he was too incompetent to understand the clear statements
being made in it, and too stubborn to admit his mistake, choosing to
leave his tweet up even now, apparently waiting for the news cycle to
end on this issue.

I was not contacted about this CVE ahead of time where it would have
been trivial to correct any incompetence on the part of Kurt prior to
the CVE being incorrectly issued -- my first notification was his
childish tweet, not something I would expect from a supposed professional
during work hours at his Red Hat employment.

Kurt gave excuse after excuse, finally hiding behind the CVE process=20
itself, insisting Qualys would need to provide some reason for rejection=20
of the CVE (which they did, despite it not being necessary for them to do=20
so as they never requested the CVE in the first place).  This was purely=20
the fault of Kurt Seifried, and he alone chose to intentionally delay the=20
entire process of correcting the matter, and also gave no justification=20
as to why his completely false tweet still remained despite there being=20
no formal process required there once it was abundantly clear he was in=20
the wrong.  I would be happy to assume Kurt was simply incompetent and=20
either didn't read the advisory or didn't understand the simple facts=20
contained in it (like that the PoC would take over 1500 years to work=20
against grsecurity under even an intentionally weakened configuration),=20
but his stubborn refusal to remove or correct a tweet he is clearly aware=20
now is wrong suggests to me nothing other than maliciousness.

If I am wrong about something, I am happy to own up to it ASAP -- why
is it so difficult for certain other people to act decently?

It doesn't bode well for the embargoing process if this is how things
are going to work for projects that don't participate.  Is the purpose
to prepare Red Hat's marketing materials in advance?  To hide the fact
that this issue should have been obvious to them many years ago but
due to their lack of investment in security despite being a
multi-billion dollar company they failed to protect their customers
against it?  Was the purpose for upstream developers to spend 4 weeks
NIH'ing our existing fix for this issue from 2010, repeating the same
events from 2010 as they've yet again produced a broken patch that oopses
machines and failed under trivial fuzzing?

Because if any lesson can be taken away from this whole mess, it's
certainly not whatever these others that didn't protect their users
for all these years have to say about it.  It's a clear vindication of
our security strategy and a demonstration of what happens when actual
investment and effective original ideas informed by offense are put
into security.

Finally, one thing I noted was missing from Solar's timeline is that
on May 18th, the day after the private distros list was notified with
details, this commit appeared in public:
https://github.com/openbsd/src/commit/4ed6bfeac112229466414b94cdbd983fb8017=
796

OpenBSD publishing this commit, in combination with Solar making repeated
mentions here on oss-sec about a cross-OS issue being worked on was enough
for me to know that the underlying issue being discussed was what we had
widely discussed publicly in 2010 on LWN and elsewhere.  What's the official
explanation for this, and is any action being taken for what I assume is a
member of the private list breaking the embargo?

Appendix:
Famous last words from the PaX Team in reply to Linus' broken heap stack gap
code from 2010:
https://lkml.org/lkml/2011/6/6/306
"what a pity that now you get to revert the whole shit
and implement it properly (i don't need to tell you where you can find such
a working solution, do i)."
(the whole post is quite good as an example of the dangers of NIH)

-Brad

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJZSmWuAAoJEETRwPglJf5J4FgP/RhICjWBsspIfEgEtVsH+qEw
mmcn0cLoNhgkrOKBvXZGVwa30/zKfpRUQPFu7sFB1rsTxD/Pg3UrBxJyfP86b+hs
cBt0+m0tuH2d7JgvKbX+EQNmnvAXl9O989BGRuFWCIX6AZ7MHFlBOtIrZK7mbfmc
1sqns4QiFYVVi4XruIr0FeiS+6xNQ62VPLmP8CO7ZLf+MZ2r99sDYlC6HhsLPiZy
no7qaLVsznDtOnYxfSWwLwalBzwPzkiBes1OLpfL3UT3zHUFNrJ8Hi93eENKEbge
fhXiPJ7qDNv3ldZ+z5GiudhOB7wx2lKIAmR9/lVnz0k9DZbIgXi6rv/w32QUtK5j
a7WulALgzk+XahA+SZYh7SzLZ/xN3/qlK8QQAt2OncHi4SX32yHjgeAtnMwPd2+Q
MDNf6jfJb9YV4fFDRzOjtUureYj2UnmXsydvlJK0f6ScehdPXqCoQ4dVObd71aMC
UsPrPCv9BXTcEsEn0XbAO3xnP0MdFn5lOjnJAOq/8ukmxhGwvlLlr0LV104yEyDN
Cs8jprRp7WAxzQY0SQEBCyCwDds91Upey3f6aZktPXVcsGOTjK8BEBlN0njEqvRB
uLWOZjGUktwYnbCgED+MhQWkHPaB8lEYpGIGlEuKyHXtNv/6C533LCtWEW9LdLgj
CfjGb+AwDWFGcb5saVqg
=G4xX
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--
