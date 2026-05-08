Received: (qmail 10236 invoked by uid 550); 8 May 2026 16:03:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13822 invoked from network); 8 May 2026 10:05:56 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: letters@lwn.net,  jzb@lwn.net
In-Reply-To: <65e733e1-1db0-4c06-926f-e587e6c10caf@afflicted.sh>
Organization: Gentoo
References: <65e733e1-1db0-4c06-926f-e587e6c10caf@afflicted.sh>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Fri, 08 May 2026 11:05:37 +0100
Message-ID: <878q9u43ny.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Copy Fail 2 / Dirty Frag =?utf-8?Q?=E2=80=94?=
 n-day from public
 commit, not embargo break

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

SiCk <sick@afflicted.sh> writes:

> Hi, I'm _SiCk

Hi,

>
> (afflicted.sh, 0xdeadbeefnetwork on GitHub).
>
>  The May 7 LWN piece on "Dirty Frag" raises the question of how the bug s=
urfaced before Hyunwoo Kim's May 12 coordinated
> disclosure.
>
>  At least one of the public artifacts in circulation =E2=80=94 my "Copy F=
ail 2: Electric Boogaloo" repo =E2=80=94 is an n-day built from
> the public netdev fix commit, not a break from inside the embargo.=20
>
> Timeline on my end: - Steffen Klassert's fix landed publicly on netdev/ne=
t.git as commit=20
> f4c50a4034e62ab75f1d5cdd191dd5f9c77fdff4.=20=20=20
>
>  Brad Spengler (@spendergrsec) publicly called the commit copyfail-class.=
 - I read the commit, recognized the xfrm
> ESP-in-UDP MSG_SPLICE_PAGES no-COW path against shared pipe pages as an L=
PE primitive, and built a PoC.=20
>
> - Published to GitHub and afflicted.sh on May 7. The repo credits Kim and=
 Chen (discovery, upstream fix), Klassert
> (maintainer fix), Spengler (public call-out), and Theori/Xint (original C=
opy Fail, CVE-2026-31431) directly in the
> README.
>
>  I had no contact with anyone on the linux-distros embargo, no awareness =
of the May 12 disclosure date, and no access to
> Kim's write-up or PoC. The work is n-day weaponization from a public upst=
ream commit, which is standard practice once a
> security-relevant fix lands in a public tree. Flagging this so parallel n=
-day work isn't characterized as a leak from
> inside the coordinated process.

Thank you for stating this clearly. I've seen a few people confused by
this and it's important to correct the record.

It's also important because it tells us a lot about how folks are
quickly going from fixes -> exploits.

> [...]

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmn9tXUbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkFfm
AP43EaHwD8FO+0gNht93CSPgwl7AtdfvxIKCp0oRouBKHQEA+oemCpGwF7GkvkBF
hWdlTo0VWDMeAQJKBxPFlJvltQk=
=jemd
-----END PGP SIGNATURE-----
--=-=-=--
