Received: (qmail 32444 invoked by uid 550); 3 May 2026 20:52:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3996 invoked from network); 3 May 2026 19:52:18 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com, Taeyang Lee <0wn@theori.io>
In-Reply-To: <afJorKIje4O6dXbH@netmeister.org>
Organization: Gentoo
References: <afJorKIje4O6dXbH@netmeister.org>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Sun, 03 May 2026 20:52:04 +0100
Message-ID: <87v7d4b7a3.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Precise disclosure contents for copyfail (Re: [oss-security]
 CVE-2026-31431: CopyFail: linux local privilege scalation)

--=-=-=
Content-Type: text/plain

Jan Schaumann <jschauma@netmeister.org> writes:

> Hi,
>
> This is currently making the rounds and looks pretty
> severe:
>
> https://copy.fail/
>
> A local privilege escalation vulnerability with a
> working PoC python script exploiting a logic flaw in
> the kernel crypto API (AF_ALG) affecting most Linux
> distributions.
>
> More detailed write-up:
> https://xint.io/blog/copy-fail-linux-distributions
>
> [...]

Are we aware of what precisely xint disclosed to the kernel security
team?

My assumption based on the tool output in the write-up is that enough
was disclosed to know this was at least an easily-exploitable LPE (*).

(*) Because part of their promotion here is for the tool's ability to
get the analysis right, so it implies that they didn't figure it out
later, and that the tool did "most of the work". Whether or not that's
actually the case, I of course don't know.

thanks,
sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmn3p2QbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkGTI
AQCcD3QBuu2lWMo+VITLQ6ITEakCwa+KijLp7nzeh55DggEAzNZmc9R3wkQEzS6m
CXVFPwerabPkpP/UMWVHn8ywKQs=
=IlLI
-----END PGP SIGNATURE-----
--=-=-=--
