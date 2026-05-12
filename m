Received: (qmail 5205 invoked by uid 550); 12 May 2026 23:49:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9303 invoked from network); 12 May 2026 23:18:53 -0000
From: Sam James <sam@gentoo.org>
To: oss-security <oss-security@lists.openwall.com>
In-Reply-To: <agM156T24FZJCljf@jumper.schlittermann.de>
Organization: Gentoo
References: <agM156T24FZJCljf@jumper.schlittermann.de>
User-Agent: mu4e 1.14.1; emacs 31.0.60
Date: Wed, 13 May 2026 00:18:40 +0100
Message-ID: <87bjekfc8f.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] [EXIM-Security-2026-05-01.1] Security Release
 4.99.3

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Heiko Schlittermann <hs@nodmarc.schlittermann.de> writes:

> Hello,
>
> The Exim maintainers are releasing an important security update to addres=
s a critical vulnerability affecting certain Exim configurations.
>
> Vulnerability Details
>
> A remotely reachable Use-After-Free (UAF) vulnerability has been
> identified in Exim's BDAT (binary data transmission) body parsing path
> when using the GnuTLS backend. This vulnerability can lead to heap
> corruption and potential code execution.
>
> Affected Versions and Configurations
>
> This vulnerability affects Exim versions 4.97 through 4.99.x that:
> - Are built with GnuTLS support
> - Have STARTTLS and CHUNKING advertised
>
> Recommended Action
>
> We strongly recommend all affected users upgrade to Exim 4.99.3 or later =
immediately.
>
> Obtaining the Fix
>
> Fixed versions are available:
> - Repository: https://code.exim.org/exim-/exim (branch: exim-4.99+fixes, =
tag: exim-4.99.3) (signed by me)
> - Tarballs: https://downloads.exim.org/exim4/ (signed by me)
> - Please see the Exim website for detailed upgrade instructions
>
> Additional Information
>
> - Distros already have coordinated access to patches
> - Internal tracking ID: EXIM-Security-2026-05-01.1
> - Full technical details will be available:
> https://exim.org/static/doc/security/EXIM-Security-2026-05-01.1/

CVE is CVE-2026-45185.

>
> Thank you for your cooperation.
> And special thanks to the reporter at xbow security.

Writeup at https://xbow.com/blog/dead-letter-cve-2026-45185-xbow-found-rce-=
exim

>
>     Best regards from Dresden/Germany
>     Viele Gr=C3=BC=C3=9Fe aus Dresden
>     Heiko Schlittermann

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmoDtVAbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkH9y
AP99IkqtFMj3wIsjUel3VknheuQuR14vhP9LKmrBrnRcHgD/XzXxnZdu8xScanef
i+JUi/8NzlHCmVbCz40gUHmRlQk=
=cmwI
-----END PGP SIGNATURE-----
--=-=-=--
