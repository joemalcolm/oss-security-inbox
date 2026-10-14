X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/14/4
Message-ID: <87bj8w3aln.fsf@gentoo.org>
Date: Wed, 14 Oct 2026 10:17:08 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Cc: Eli Zaretskii <eliz@....org>,  Michael Albinus <michael.albinus@....de>, 정원영 <wonyoung.jung@...esearchlab.com>, 남성엽 <synam@...esearchlab.com>, Tomas Hoger <thoger@...hat.com>
Subject: Re: Incomplete fix for Emacs CVE-2026-79992
Content-Type: text/plain; charset=utf-8

Sean Whitton <spwhitton@...hitton.name> writes:

> Wonyoung Jung of 78ResearchLab, using their PatchHawk tool, discovered
> that the fix for CVE-2026-79992 was incomplete.
> The tramp-user-regexp failed to check for some additional problematic
> characters in user names, meaning that exploitation was still possible.
>
> The attached patch by TRAMP maintainer Michael Albinus addresses the
> problem.  It will be included in Emacs 31.2 though that won't be
> released soon.
>

Red Hat, would you be willing to provide another CVE for this? Thank
you.

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
