X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/24/15
Message-ID: <20141024223832.GA29046@zoho.com>
Date: Fri, 24 Oct 2014 22:38:32 +0000
From: mancha <mancha1@...o.com>
To: oss-security@...ts.openwall.com
Subject: Re: strings / libbfd crasher
Content-Type: text/plain; charset=utf-8

On Fri, Oct 24, 2014 at 12:10:31PM -0700, Michal Zalewski wrote:
> I do have a bunch more that seem exploitable, though - for example:
> 
> http://lcamtuf.coredump.cx/strings-bfd-badfree - does this repro for
> people (I tried with binutils 2.24)?

Yes.

> I think that given the expectations people have around what strings
> does and whether it's safe to run on untrusted binaries, I'd seriously
> question the wisdom of making it use libbfd, at least by default;
> perhaps distros want to consider non-upstream patches that default to
> the -a mode, instead?

Unfortunately, the buggy code can be arrived at via multiple entry
points (e.g. objdump -p or nm on stringme, stringmetoo, and
strings-bfd-badfree). Those are also commonly used on untrusted binaries
(e.g. forensics). Fixing the core issues seems the way to go.

--mancha

Content of type "application/pgp-signature" skipped
