X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/02/6
Message-ID: <0480dd57-43cc-4fc0-aeff-77fe98df9d8b@gmail.com>
Date: Sun, 2 Aug 2026 17:13:15 -0400
From: Demi Marie Obenour <demiobenour@...il.com>
To: oss-security@...ts.openwall.com, Alan Coopersmith <alan.coopersmith@...cle.com>
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On 7/30/26 17:41, Alan Coopersmith wrote:
> https://blogs.gnome.org/mcatanzaro/2026/07/20/some-changes-to-gnome-security-tracking/
> announces some changes to the GNOME project's security bug handling:
> 
> 1) The disclosure deadline is cut from 90 days to 30 days, as most
>     GNOME maintainers that fix bugs during the embargo do so within
>     the first 30 days.  This is effective for new bugs reported starting
>     August 1.
> 
> 2) The GNOME security team will no longer forward vulnerability reports
>     to projects that ban AI-generated content, since most reports they
>     get these days have at least some AI-generated content.
> 
> 3) Michael Catanzaro will be stepping down in November, after 6 years
>     of handling this work for GNOME.  He's looking for someone to step
>     up to replace him.
General comment on security fixes in open source projects:

I think the motivation for projects like Akrites is simple.  Companies
need vulnerabilities fixed fast enough that attackers do not exploit
them first.  To that end, they want a contract that guarantees that
vulnerabilities will be fixed in a certain amount of time.  Even if
one offered to pay open source maintainers a significant amount of
money for such a contract, there is no guarantee they would accept.
One needs a team of a certain minimum size to guarantee someone will
be available while still giving everyone enough time off.

Also, the volume of security fixes may swamp upstream review capacity,
even if the maintainers *are* paid.  It might be necessary to maintain
downstream forks until upstream is able to catch up.  However,
that's very discouraging to upstreams.  It might be possible to
persuade upstreams to give security professionals commit access,
but that would require an extensive process to both build trust and
verify that the professionals have been vetted.

That said, I think the solution is systemic fixes, as explained by
Alex Gaynor in [1].  Unfortunately, for lots of C and C++ code, the
systemic fix is a complete rewrite in a safe language, or at least
using a safe language for new code.  That's a huge amount of work,
and it is work that existing maintainers may have no interest in.

I would not be surprised if a significant fraction of existing programs
and libraries are relegated to environments where either the input
is trusted, or there is a sufficiently strong sandbox that even an
arbitrary code execution exploit is not a serious risk.

[1]: https://alexgaynor.net/2026/jul/15/you-cant-bugfix-your-way-out-of-the-vulnpocalypse/
-- 
Sincerely,
Demi Marie Obenour (she/her/hers)


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (834 bytes)
