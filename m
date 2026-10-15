X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/15/1
Message-ID: <atBu5i3RfF1TEmsx@eldamar.lan>
Date: Thu, 15 Oct 2026 08:12:54 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Cc: Eli Zaretskii <eliz@....org>, Michael Albinus <michael.albinus@....de>, 정원영 <wonyoung.jung@...esearchlab.com>, 남성엽 <synam@...esearchlab.com>, Tomas Hoger <thoger@...hat.com>
Subject: Re: Incomplete fix for Emacs CVE-2026-79992
Content-Type: text/plain; charset=utf-8

Hi,

On Wed, Oct 14, 2026 at 10:17:08AM +0100, Sam James wrote:
> Sean Whitton <spwhitton@...hitton.name> writes:
> 
> > Wonyoung Jung of 78ResearchLab, using their PatchHawk tool, discovered
> > that the fix for CVE-2026-79992 was incomplete.
> > The tramp-user-regexp failed to check for some additional problematic
> > characters in user names, meaning that exploitation was still possible.
> >
> > The attached patch by TRAMP maintainer Michael Albinus addresses the
> > problem.  It will be included in Emacs 31.2 though that won't be
> > released soon.
> >
> 
> Red Hat, would you be willing to provide another CVE for this? Thank
> you.

FWIW, this is already https://www.cve.org/CVERecord?id=CVE-2026-108976
.

Regards,
Salvatore
