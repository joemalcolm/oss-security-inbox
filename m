Received: (qmail 6101 invoked by uid 550); 4 May 2026 16:57:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3526 invoked from network); 4 May 2026 16:39:09 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>
In-Reply-To: <87se878751.fsf@gentoo.org>
Organization: Gentoo
References: <4g81Yq4Bj4zJrP1@spike.porcupine.org> <87se878751.fsf@gentoo.org>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Mon, 04 May 2026 17:38:55 +0100
Message-ID: <87jytj86zk.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Re: [pfx] Postfix stable release 3.11.2 and legacy releases 3.10.9,
 3.9.10, 3.8.16

--=-=-=
Content-Type: text/plain

Sam James <sam@gentoo.org> writes:

> The most significant one here seems to be the first entry under "Fixed
> in Postfix 3.8, 3.9, 3.10:".
>
> -------------------- Start of forwarded message --------------------
> To: Postfix announce <postfix-announce@postfix.org>
> Date: Sun, 3 May 2026 19:43:27 -0400 (EDT)
> CC: Postfix users <postfix-users@postfix.org>
> Subject: [pfx] Postfix stable release 3.11.2 and legacy releases 3.10.9, 3.9.10, 3.8.16
> From: Wietse Venema via Postfix-users <postfix-users@postfix.org>
>
> [An on-line version of this announcement will be available at
> https://www.postfix.org/announcements/postfix-3.11.2.html]
>
> [...]

I am interested in feedback on whether using my own judgement is
acceptable for bringing these to oss-security, where I believe they may
of interest (releases with fixes that appear security-related, as the
volume is increasing with the current wave of new tooling (*)),
or whether there are some guidelines I should apply.

Thanks in advance.

(*) I of course only plan to bring such things where I plan to treat
them at least in part as a security bug downstream.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmn4y6AbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkEvd
AP9vG2iXxFNGAi6f5QoPbRr6DObyZyguOn82Rkg4zI6mMwEA0YHAu/LNqUUS0zdO
5fHJQY+To1CiOBiUp/Uc4dHsCgc=
=HFsi
-----END PGP SIGNATURE-----
--=-=-=--
