Received: (qmail 18134 invoked by uid 550); 19 Apr 2026 21:10:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25857 invoked from network); 19 Apr 2026 18:27:50 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <69e0cf03.a70a0220.a47bc.d193@mx.google.com>
Organization: Gentoo
References: <69e0cf03.a70a0220.a47bc.d193@mx.google.com>
User-Agent: mu4e 1.14.0; emacs 31.0.50
Date: Sun, 19 Apr 2026 19:27:36 +0100
Message-ID: <87v7dmrejr.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] CVE-2025-27363: FontForge affected by FreeType
 heap-buffer-overflow; upstream maintainer declines under
 Community-guidelines #D1

--=-=-=
Content-Type: text/plain

yangjincheng1998@gmail.com writes:

> Hello oss-security,
>
> [...]
>
> == Upstream maintainer response ==
> We reported this downstream impact to FontForge upstream as
> https://github.com/fontforge/fontforge/issues/5799 (2026-04-15).
> The issue was closed within hours under "Community-guidelines #D1",
> which states that the project does not accept security reports without
> an accompanying fix PR.
>

I'll note that the linked #D1 guidelines [0] say:

> FontForge SHOULD NOT, EVER receive untrusted input. Most users only
> use it to edit their own fonts and sometimes popular open-source
> fonts. Even if we fix all the issues findable with automated tools,
> there are many, many memory bugs in FontForge.

Of course, there's the usual question of whether all users and possibly
scripts invoking FontForge are aware of this, but I don't think this is
an unreasonable position for a project to have by itself.

[0] https://github.com/fontforge/fontforge/wiki/Community-guidelines#D1

> Context: ZDI submitted 12 unrelated FontForge CVEs in 2025-12 and
> received the same response
> (https://github.com/fontforge/fontforge/issues/5706).
>
> We post here so distributors and downstream packagers have a public,
> independent record of the FontForge -> FreeType linkage status, and
> can verify their own builds.

> [...]

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmnlHpgbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkOeS
AQC53kR3FKtFQPC66ekvTLcGTJv6uELJ3ECTnU90RwctJgEA5PBjev4gUfSmaf6N
iHznQoJpCe/JJBCTiLaxB4cq1Ak=
=SJFD
-----END PGP SIGNATURE-----
--=-=-=--
