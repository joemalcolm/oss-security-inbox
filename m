Received: (qmail 27855 invoked by uid 550); 28 Dec 2025 23:09:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25898 invoked from network); 28 Dec 2025 11:38:43 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: contact@gpg.fail
In-Reply-To: <20251228042744.GA629@openwall.com>
Organization: Gentoo
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<20251228042744.GA629@openwall.com>
User-Agent: mu4e 1.12.13; emacs 31.0.50
Date: Sun, 28 Dec 2025 11:38:29 +0000
Message-ID: <878qemkf9m.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

--=-=-=
Content-Type: text/plain

Solar Designer <solar@openwall.com> writes:

> On Sat, Dec 27, 2025 at 07:29:53PM -0500, Demi Marie Obenour wrote:
>> https://gpg.fail lists many vulnerabilities in GnuPG, one of which
>> allows remote code execution.  All are zero-days to the best of
>> my knowledge.
>
> Thanks.  I wish this were brought in here by the researchers, but since
> it was not and since we require actual content here (not just links),

Indeed. I'll note that several of the vulnerability pages (say
https://gpg.fail/sha1) have:

> Upcoming Timeline:
> [...]
> 21.12.2025: Disclosure of this report on https://seclists.org/fulldisclosure/

But I've not been able to find such a report there either.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmlRFrUbFIAAAAAABAAO
bWFudTIsMi41KzEuMTEsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkHwD
AP4xNwUkTZYRDB6NL21R0WJJVtWq7tG+lIzN81CJ4CEtFwD+KKCPmMm1ebm+q0um
mqLEQ+Zg8TLPs9JtnhqhF0rXfw4=
=3naj
-----END PGP SIGNATURE-----
--=-=-=--
