X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/05/3
Message-ID: <apvE4ugnjS0YiqgK@eldamar.lan>
Date: Sat, 5 Sep 2026 09:29:38 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: pcre2 version 10.48 released with security fixes
Content-Type: text/plain; charset=utf-8

Hi,

On Fri, Sep 04, 2026 at 04:25:51PM -0700, Alan Coopersmith wrote:
> https://github.com/PCRE2Project/pcre2/blob/pcre2-10.48/NEWS reports:
> > Version 10.48 31-August-2026
> > ----------------------------
> > 
> > This is a regular release, incorporating security fixes along with small
> > improvements and fixes to library behaviour.
> > 
> > Only changes to behaviour, changes to the API, and other significant changes
> > are described here. Please see the ChangeLog and Git log for further details.
> > 
> > As well as the tarball and Git tag for this release, there are detailed
> > instructions for backporting security and correctness fixes, for the last
> > five years of releases.
> > 
> > * (Git change) Renamed the default development branch from master to main.
> > 
> > * (Maintenance change) Added a five-year support lifecycle policy and
> > publication of backport patches for security and high-severity fixes in older
> > releases.
> > 
> > * (Security fix for very specific API usage, GHSA-2p8c-ff85-vh9x) If
> > pcre2_jit_compile() is called with options for some match modes, and then
> > pcre2_match() is used to perform a match for a different match mode, an
> > out-of-bounds read can occur if the match is attempted against invalid UTF input.
> > 
> > * (Security fix for pattern conversion, GHSA-q8g2-wprr-34m9) If pcre2_convert()
> > is called on untrusted input on platforms with 32-bit size_t, an out-of-bounds
> > heap write can occur.
> > 
> > * (Security fix, GHSA-3r4p-g7gg-ppmf) Fixed an out-of-bounds write in DFA
> > matching when using a heap limit; also fixed possible integer overflows which
> > could cause under-allocation of the workspace.
[...]
> None seem to have CVE id's assigned at this time.

This one got CVE-2026-86145, but so far not the others I think.

For tracking downstream fixes defintively it would be more helpful to
have a CVE identifier assigned sooner, but right now as we know many
of the CNAs in scope for products have huge backlogs.

Regards,
Salvatore
