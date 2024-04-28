Received: (qmail 7359 invoked by uid 550); 28 Apr 2024 13:43:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23854 invoked from network); 28 Apr 2024 06:34:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=korelogic.com;
	s=mail; t=1714286079;
	bh=mJNIX1JSuBBbp+aO2LPqWXLF3Zyc6qLFfRm/icfVt84=;
	h=Date:From:To:Subject:Reply-To;
	b=xzVPsYXxeIdYwRRk7CGgFKkcyW+LWF1nFzgiJ5XbKHubJtLxmXBvefKejDvEu5Ltp
	 hoD5Nkahf7oQRWgt8GN8vMhDAwyg3czIqmB3Q9jYnV1KDjEQ/30OPFwhNYJH4hbpRQ
	 xkjl87sc2eHJfmly5QBZ5uFdjAnDptfo+JNXkxoI=
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.103.8 at mail.korelogic.com
Date: Sun, 28 Apr 2024 00:34:36 -0600
From: Hank Leininger <hlein@korelogic.com>
To: oss-security@lists.openwall.com
Message-ID: <20240427234834.c0219029-fe37-49ef-a563-4d24eea118c2@korelogic.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7jW/nlTYiqWCAQjy"
Content-Disposition: inline
Subject: Re: [oss-security] Update on the distro-backdoor-scanner effort

--7jW/nlTYiqWCAQjy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2024-04-27, Jacob Bachmeyer wrote:

> >   - Output is manageable; able to rule out all hits not part of the
> >     actual xz-utils backdoors as false positives.
>=20
> This is what I would expect:  the backdoor dropper appears to have
> been specifically developed for xz-utils, but could /possibly/ be
> adaptable to other compression tools.

Indeed, well my thinking was more along the lines of: "This is an
impressive amount of moving parts to be created new for this project,
and burned for just this project. What if what we are seeing is the 2nd
or 3rd gen of such a toolkit, and earlier ones have some similar
characteristics but maybe fewer layers, etc. so we could spot them?" As
well as "a human made choices here and here and there. Did the same
human make the same choices (muscle memory, etc.) elsewhere?" Basically
did they make an opsec mistake we can catch?

We'd never know until we looked. And while the liblzma decompressor had
certain things going for it as a target, why not other things? (Nor am I
restricting to "other things that would get linked into sshd", but
really more broadly.)

As with pretty much all of this, anyone who knows or just assumes
someone is looking, can adjust their behavior going forward. But did
they baby steps this 5-10 years ago and what we're now discussing is a
descendant of something we can identify?

Maybe 20 years ago I was involved in catching/analyzing './configure'
backdoors in a few things - irssi, fragroute, BitchX, fragrouter, that
typically involved upstream distribution sites getting hacked, and
sometimes attempts to phish kernel developers on LKML, etc. The
xz-utils stuff is many generations ahead of those; it would be
interesting to spot some missing links.

> You might get better results by indexing macro definitions found in
> *.m4 files, instead of trying to fuzzily hash the files.  The
> interesting comparison is then different definitions of macros with
> the same name.

I like this a lot as a potential next layer for the m4 reconciliation.
Essentially a field-level matching once things that match at a
file-level have been eliminated. I don't see why (he says, not actually
having dug into the m4 format much) we couldn't break apart all the m4s
we are choosing to consider known-good, and catalog each individual
macro, and then do the same when bashing project-specific files. Could
be we can entirely "clear" a file with an unknown checksum because it
consists 100% of idnividual macros that are known. (Insert weird machine
here that combined OK macros in surprising ways.)

> many (most?) modern Linux kernels are compressed using xz, which means
> that a Thompsonesque attack could binary-patch a freshly built kernel
> while compressing vmlinux to make vmlinuz.

Good call. This may be far out on the.... "far out" scale, but it'd be
pretty trivial to harvest distro kernels that used xz to make their
vmlinuz, and then run those through multiple independent implementations
like we have done with .tar.xz files. Sold.

> The IFUNC mechanism is actually a security feature.  In "inner-loop"
> code, having multiple implementations with different optimizations
> with the preferred implementation for the local processor chosen at
> runtime is fairly common.

Thanks for this! I've seen that discussed as a (valid, useful) use of
IFUNC but also AFAIK things like musl don't implement such a thing, so
either software that wants it just doesn't support musl, or can't pick
an optimization, or does so in an undesirable way like writable pointers
in the data segment or... some other option? The glibc thread was
discussing some options like a cpu_features mask although that looks to
get unpractically unweildy in a hurry.

Aside from any discussions about "can/should we deprecate IFUNCs" which
are above my pay grade, I'd be satisfied being able to say "IFUNCs are
used by 15 out of 10,000 packages; that's a small enough number we can
a) audit them all b) add alerting to tooling used for builds; when a
package suddenly starts using them, look into it." If the real number
turns out to be 1,000 out of 10,000, then that's good to know, and
probably give up.

> I currently suspect that the crackers used IFUNC support as a covert
> flag.  The "jankiness" of the current glibc IFUNC implementation
> provided a convenient excuse to ask oss-fuzz to --disable-ifunc when
> building xz-utils, which *also* conveniently inhibited the backdoor
> dropper and ensured that the fuzzing builds would not contain the
> backdoor.

Uncynically, I like this conspiracy theory.

> > - Check for irregular contents in .pc files, inspired by Vegard
> >   Nossum's oss-security post

> Much easier:  look for pkg-config descriptions containing text other
> than a variable definition.  The pkg-config tool itself should
> probably enforce "cleanliness" on this matter and refuse to process
> files containing other text.  (It also should complain about and
> reject an *-uninstalled.pc file found in the system directories, which
> was another logic error exploited in that sample backdoor.)

Really, doing this seems a more robust approach anyway, because allowing
only known-good > rejecting known-bad. I was mostly driven by "hang on,
how many of the things Nossum's example does are actually used by real
files?" and the answer from my initial sample size was zero, so it'd be
trivial to extend that check to every .pc file shipped by every current
distro's packages.

I think Sam looked into existing pkg-config verifiers and found they do
not complain about things we thought they should complain about (this
could just mean we misunderstand their purpose). A strict lint-checker
for such files would be better than just checking for specific
suspicious patterns. But, I don't yet know how strict a format we could
insist on (would it turn out 10% of files in fact break what we
initially think are reasonable rules?). Even still, I think you could
embed badness in legit variables, although I haven't dug in enough to
know that for sure.

Thanks,

--=20

Hank Leininger <hlein@korelogic.com>
8428 ED14 5268 C727 0C48  F454 846F 0637 5FEB 1612

--7jW/nlTYiqWCAQjy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEhCjtFFJoxycMSPRUhG8GN1/rFhIFAmYt7fwACgkQhG8GN1/r
FhJKDg/+Pl9WaG0yqCfhNP4MYKQGlf7dIQBz31vBynGe3+dbvhAtB/7moWcVje7Y
JvidVXOhPE2+x4mmWPs+Hp/a+YstD4T+9m+gIL8Gwe/8jFzipE97EDbk1cXw6/ZF
afXSzF0qxYnoBD1MjWqPyMFJmEX9MXnW4Rotp2bn/dzgwDTt/ngj66bUIk9aTvBV
/oMg1Zx61pRg4oeIqrk2o3fAiBIUquNCu340xqyO4cGvL1ju9XqWXC/G2Ol7/ibg
ZtcwyzzGK4tWlnNGmbwFQJs9Qfc69ZD346ckISH70bjkOBi+31Rj268Gy2vBVphK
Ow3yLS0kEceQIu+eizv/wmSN73HKkUhtlqaVwlp3qnKIZhJp5QiefuzQ1ZKRRb9R
Qyo3Tb/ZdmncQXLF8kfCdFiLHOggS2doZz47fZSL+tCic5C2XpGUd7M7ckF+24kq
vR7dGScweWmmMmNH1sB+3ZKGw2w3ThgOcnk5+d6oL8sNVTDcAYcsG65QSJCBToO9
6hrtv3066MxzG8c1FPIxxvgFatBpnfJ/pCHawmxExJEkAA6xMP6ozHhD6w4PeB8s
Giz3njrvY1tDaRbUml+xjq9y8WjXjXvYRZTj8VsEViye/7VAb6DxZ+EeZdRq7DT1
9j1ompjc/H38nh4d9C6dHN1oLl3vwv5VnjbjCbo3Wx7A92qeldI=
=Srf9
-----END PGP SIGNATURE-----

--7jW/nlTYiqWCAQjy--
