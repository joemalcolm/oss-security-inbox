X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5407" "Wednesday" "21" "June" "2017" "17:27:43" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170621212742.GA28766@grsecurity.net>" "106" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062121:27:43" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        spender@grse Jun 21  106/5407  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621135727.GA12852@openwall.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<20170621122526.GA32701@grsecurity.net>" "<20170621135727.GA12852@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13513 invoked by uid 550); 21 Jun 2017 22:00:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18153 invoked from network); 21 Jun 2017 21:27:55 -0000
Message-ID: <20170621212742.GA28766@grsecurity.net>
References: <20170619152843.GC7769@localhost.localdomain>
 <14558692.afnJ5aRU9J@wanheda>
 <20170621122526.GA32701@grsecurity.net>
 <20170621135727.GA12852@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
In-Reply-To: <20170621135727.GA12852@openwall.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 21 Jun 2017 17:27:43 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> OpenBSD isn't a member of the distros list - they were notified by
> Qualys separately.  This matter was discussed, and some folks were
> unhappy about OpenBSD's action, but in the end it was decided that
> since, as you correctly say, the underlying issue was already publicly
> known, OpenBSD's commits don't change things much.  Sure this draws
> renewed attention to the problem, but probably not to the extent and in
> the many specific ways the Qualys findings cover.  So it was decided to
> keep the embargo on the detail.

Thank you for clarifying that, my assumption was indeed wrong then.

Still, if OpenBSD was able to resolve the issues necessary after=20
notification without leaking full details to the public, shouldn't=20
this have been possible for the other projects without an embargo,=20
let alone an extended one?  Especially considering that the full=20
duration of the extended embargo didn't result in complete fixes for=20
the issue and in fact resulted in a broken fix for Linux, which=20
could easily have been avoided if the discussions around it happened=20
in public (and none of the deep details from the Qualys advisory=20
would have been needed for any of those discussions).
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3Df4cb767d76cf7ee72f97dd76f6cfa6c76a5edc89
for instance mentions Linus' fix blew up in 3 minutes of fuzz testing.

> Ditto for the "move mmap_area and PIE binaries away from the stack"
> patch series posted to LKML and CC'ed to kernel-hardening on June 2:
>=20
> http://www.openwall.com/lists/kernel-hardening/2017/06/02/
>=20
> which might have been inspired by Qualys work known to Red Hat engineers
> internally.  A difference is that Red Hat is a member of the distros
> list.  I brought this up on the distros list, and another Red Hat person
> said "We'll deal with this internally."  Given the circumstances, I find
> this response satisfactory.

At first I was rather concerned about this, so I emailed Rik=20
directly and asked him the simple question of whether the advance=20
notice prioritized or kickstarted the process of porting those=20
features, regardless of having looked at some code in the past (as I=20
imagine much of our code has been looked at).  I too am satisfied=20
with his answer that the actual porting work on his part had already
been done prior to that notice, and that any internal concerns afterward
were simply to avoid the appearance of impropriety.

My take on the embargoing process (outside of what's already mentioned
on https://grsecurity.net/an_ancient_kernel_hole_is_not_closed.php ):
I've always been concerned by the fact that smaller distros seem to=20
be barred from distros-list membership; it seems the arrangement=20
lends itself too much to enabling the marketing of the larger=20
companies and in fact perhaps even disincentivizing their investment=20
in security as the embargo process enables them to skirt much of the=20
public pain they'd otherwise have to experience (for in this=20
instance what was a completely avoidable problem).  I get the practical
reasons for the policy (increased leak risk, major distros often do
the actual fixing work, etc) but from a level of principle it's always
rubbed me the wrong way.

So despite that I have full trust in you Alexander as being=20
completely transparent and impartial despite having to engage in a=20
bit of politics necessary to work with all the companies involved, I=20
am uneasy (and I believe I note some uneasiness in your own mails)=20
with how others are exploiting the arrangment despite your sincere
efforts at sticking to the policies you established.

That said, I think regardless of whether you head the distros list
or not, the major companies are going to see it to be in their
financial/PR interest to maintain an embargo list.  I would not be
surprised at all if were you to step down from the role/shutter the
list, a company like Red Hat would quickly swoop in to "take the
reins."  Which would be a shame and adds to my general worries about
the direction this industry is going in, since your record for fairness
is sterling, and I doubt very much that dogged dedicated to
transparency, fairness, and ethics would continue with anyone else
at the helm.

Thanks,
-Brad

--fdj2RfSjLxBAspz7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJZSuTHAAoJEETRwPglJf5JZPcP/3BHiJ0jOxTWRADUUoZlErnu
gPIB7fctbWBr4kIp9i8LDElpV99W1JXqH00BRv1cwrr57lquP8u9GUm6UTEk2l3p
wdeMS2SdZ2M7CWbNcMidplXMGTTB+38Ss0k6vPd8GAicv1d2CoW91523y45X/ID5
iF1qVoHajaDMayIsEKNAfRXb1aT5miaETPl8OIx8Q0cmXc4Qrm7QvznbaK3GXXc4
BEwLAwiNXO4+42c8O4PscG8zCkBYaFWGGgTfC4Rr1pdWPvi95gYEzGmy1YmZHBEm
sA7qjzPJLnwXzLKOECwHtoBHAx6mj1+WipxPWPsEHS2akj9sidXVzFgiUQKYTWhw
ijZz4BX8gDcq6i7ZYHM2dnt5/dgnxw/ZUEK773SEDOHnngQS0RNkVhJIVcDWmA4u
8hFShu5sVvJ6cBpiF7Htpdq70e+sG73gnv0xxM74dVJXH/SmKQ+5r3qQxV0uDZuj
ylXSAo440KbhzraPWFbukX1xJu6uYKcXy7i3VyNqPbQ4G/3vF+QlYGb+//PrTmQ1
/Ikyn0LIs95ZKF0gWgpyXDS9692wA/dTW71EUJX553ShSkkSvYR3wDQSZx65ZJVm
R+kVVl5fXoZKH/UYl+IktKQmbJxrPDopMldjj7zBqRleutrMc6xQVTqZj2KjhDQp
UQ7x2T63mlDQJpzJzBBV
=CX63
-----END PGP SIGNATURE-----

--fdj2RfSjLxBAspz7--
