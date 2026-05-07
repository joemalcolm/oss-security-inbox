Received: (qmail 25943 invoked by uid 550); 7 May 2026 16:42:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28418 invoked from network); 7 May 2026 07:54:23 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: xw x <v3rdant.xiang@gmail.com>
In-Reply-To: <20260507042708.GA2912@openwall.com>
Organization: Gentoo
References: <20260507042708.GA2912@openwall.com>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Thu, 07 May 2026 08:50:53 +0100
Message-ID: <87bjerac9u.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Linux kernel: KTLS + sockmap "Reverse Order"
 Use-After-Free / Data Corruption

--=-=-=
Content-Type: text/plain

Solar Designer <solar@openwall.com> writes:

> Hi,
>
> V3rdant, CC'ed here, brought this Linux kernel issue to linux-distros on
> March 18, and apparently also to s@k.o at about the same time, citing
> the (outdated) syzkaller "Reporting Linux kernel bugs" instructions:
>
> https://www.openwall.com/lists/oss-security/2026/05/03/2
>
> So we immediately had a coordination problem, which V3rdant acknowledged:
>
> On Wed, Mar 18, 2026 at 10:28:23PM +0000, x xw wrote:
> [...]
> It looks like literally everyone dropped the ball on this issue after
> that point.  This includes two distros who had volunteered for:
>
> https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
>
> 9. Stay on top of issues to ensure progress is being made, remind others
> when there's no apparent progress, as well as when the public disclosure
> date for an issue is approaching and when it's finally reached (unless
> the reporter beats you to it by making their mandatory posting to
> oss-security first) - primary: Gentoo, backup: Amazon
>
> I since heard back from Gentoo on this, but no word from Amazon yet.

Indeed. I do think there's a circular element here, which does not
excuse the ball being dropped, but I offer it as a partial explanation:
the current kernel process makes it challenging to keep track of whether
a fix is actually in-flight or whether it's related to a reported
problem. But nonetheless, we should've stayed on top of it with the
reporter.

We're also onboarding another member for the security team as it's just
myself at the moment, and we unexpectedly lost another from illness
recently.

> [...]

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmn8RSAbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkPfD
AP0SvbKdWuAymqldb5Se3j5JfRR52akUgdDLXEu4qp/s2wD9FZJ84c2GkUPsMXTU
8pR1Yv9FkPTa/mR7j90y2fSZwgw=
=I3UI
-----END PGP SIGNATURE-----
--=-=-=--
