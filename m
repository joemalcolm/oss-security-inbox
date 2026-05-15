Received: (qmail 15520 invoked by uid 550); 15 May 2026 19:17:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31968 invoked from network); 15 May 2026 16:00:25 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <agatHO2LLWgRX7f5@eldamar.lan>
Organization: Gentoo
References: <20260515022033.GA10889@localhost.localdomain>
	<87cxyxe76j.fsf@gentoo.org> <agarKP9wHQMGuV_D@eldamar.lan>
	<agatHO2LLWgRX7f5@eldamar.lan>
User-Agent: mu4e 1.14.1; emacs 31.0.60
Date: Fri, 15 May 2026 17:00:07 +0100
Message-ID: <874ik8ek8o.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Logic bug in the Linux kernel's
 __ptrace_may_access() function

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Salvatore Bonaccorso <carnil@debian.org> writes:

> hi,
>
> On Fri, May 15, 2026 at 07:12:08AM +0200, Salvatore Bonaccorso wrote:
>> Hi
>>=20
>> On Fri, May 15, 2026 at 03:29:56AM +0100, Sam James wrote:
>> > Qualys Security Advisory <qsa@qualys.com> writes:
>> >=20
>> > > Hi all,
>> > >
>> > > Today a vulnerability that we reported to security@kernel was fixed:
>> > >
>> > >   https://github.com/torvalds/linux/commit/31e62c2ebbfdc3fe3dbdf5e02=
c92a9dc67087a3a
>> > >
>> > > [...]
>> > >
>> > > Today we also contacted the linux-distros@openwall, but since exploi=
ts
>> > > are already public we were told to send this to oss-security@openwall
>> > > instead, hence this post. We are not publishing our advisory yet, to
>> > > give distributions and users a chance to patch.
>> >=20
>> > Thank you. I'm sorry you've had your moment somewhat spoiled.
>> >=20
>> > I include some notes for readers.
>> >=20
>> > --
>> >=20
>> > Please note that despite the commit title and contents, it is not
>> > exclusive to ptrace, and ptrace restriction mechanisms will not help
>> > here.
>> >=20
>> > As for mitigations: I don't think there are any real ones.
>> >=20
>> > Some ideas:
>> > * Block pidfd_getfd. I don't think it's actually used that heavily and
>> >   there's often fallbacks for older kernels when it is.
>> >=20
>> > * You could remove the world-executable bit from ssh-keysign
>> >   but this is *not* the only binary affected, and this is a very weak
>> >   mitigation indeed __only for the PoC__.
>> >=20
>> > The patch from Linus applies cleanly down to 6.6 or so. For 6.1 (IIRC),
>> > there was a trivial conflict (attached for convenience).
>> >=20
>> > For 5.10, a prerequisite commit is handy:
>> > 5bc78502322a5e4eef3f1b2a2813751dc6434143, then apply the 6.1 version.
>>=20
>> I'm not 100% certian, but setting restrictive kernel.yama.ptrace_scope
>> might as well serve as temporary workaround. Can you confirm?
>
> Nevermind, it is written above by Sam, it ptrace restricing techniques
> so won't be enough.

To correct myself now (sorry, I was up quite a while yesterday when I
first saw reports of this bug): Qualys's reply says =3D2 or =3D3 would be
enough at least with what we know so far.

What I got mixed up with was that in Gentoo, for some reasons I won't
bore readers with, =3D2 and =3D3 aren't an option yet (*), so I tried =3D1
and didn't think much more of it. In hindsight, I should've probed more.

>
> Regards,
> Salvatore

(*) https://bugs.gentoo.org/771360 and likely some other bugs

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmoHQwgbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkJTU
AP4gclrzKu7MKI118O5XA7waCiQUvZ7vK0xjQGpFMkEqOAEA79oQanRoKAz9s6aa
/cmo8hxdiDeWSvKR0a1eEy3LQA8=
=tJvf
-----END PGP SIGNATURE-----
--=-=-=--
