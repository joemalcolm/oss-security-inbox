Received: (qmail 29790 invoked by uid 550); 7 Feb 2026 03:56:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28186 invoked from network); 7 Feb 2026 01:30:15 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Florian Weimer <fw@deneb.enyo.de>
Organization: Gentoo
User-Agent: mu4e 1.12.15; emacs 31.0.50
Date: Sat, 07 Feb 2026 01:30:00 +0000
Message-ID: <87jywpibmv.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] On patch vs commit messages

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi!

I don't think I view this as a vulnerability, but I think the topic is
rather interesting and it seems like the audience here might be
interested in it and/or take another view on whether it is a problem.

Michael Stapelberg posted on Mastodon [0] the following:
> PSA: Did you know that it=E2=80=99s **unsafe** to put code diffs into you=
r commit messages?
>
> Like https://github.com/i3/i3/pull/6564 for example
>
> Such diffs will be applied by patch(1) (also git-am(1)) as part of the co=
de change!
>
> This is how a sleep(1) made it into i3 4.25-2 in Debian unstable.

I see Florian has sent a patch to patch(1) for this, to implement
--no-dedent [1].

But git-am(1) does the same: there's also a discussion ongoing over at
the git mailing list [2].

I think at the very least, this is rather surprising. I've run into it a
handful of times when applying a patch to gentoo.git where the commit
message includes some diff that someone used for debugging, but in those
cases, the diff was always to file(s) not in the repository (but a patch
to be applied to the *package*'s source code), hence it was just an
annoyance and resulted in the patch just not applying.

(Similarly, it does remind me a little of how patch fuzz can lead to
genuine problems and is often dismissed as noise, but e.g. you could
easily get a double free from it. A patch applying is not always a good thi=
ng.)

[0] https://mas.to/@zekjur/116022397626943871
[1] https://lists.gnu.org/archive/html/bug-patch/2026-02/msg00000.html
[2]
https://lore.kernel.org/git/bcqvh7ahjjgzpgxwnr4kh3hfkksfruf54refyry3ha7qk7d=
ldf@fij5calmscvm/

anyway, I hope this is of some value to readers,
sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmmGlZgbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkG9z
AQDA/a5tixFbB+H0oHdh/xFn+nDmc9WCf+csoaYbxTAkqgEA+EP6+Nwnooe4Ah8v
eDSE0Ry9rzZ6Xeb3kg3Trm6jGAE=
=HWtD
-----END PGP SIGNATURE-----
--=-=-=--
