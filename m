X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/21/9
Message-ID: <20260921214300.4e0314a7@moche20>
Date: Mon, 21 Sep 2026 21:43:00 +0200
From: Tomas Hoger <thoger@...hat.com>
To: Sean Whitton <spwhitton@...hitton.name>, Bas Alberts <anticomputer@...hub.com>
Cc: oss-security@...ts.openwall.com, Eli Zaretskii <eliz@....org>, Michael Albinus <michael.albinus@....de>, Stefan Monnier <monnier@....umontreal.ca>, João Távora <joaotavora@...il.com>
Subject: Re: Emacs arbitrary code execution: incomplete fix for CVE-2024-53920
Content-Type: text/plain; charset=utf-8

On Mon, 14 Sep 2026 11:47:17 +0100 Sean Whitton wrote:

> Bas Alberts of the GitHub Security Lab discovered that the fix for
> CVE-2024-53920, an arbitrary code execution flaw in Emacs, was
> incomplete.  Viewing or editing untrusted text files in modes other than
> Emacs Lisp mode can also permit arbitrary code execution.  For example:
> 
>     #!/usr/bin/perl
>     # -*- mode: perl; mode: flymake -*-
>     BEGIN { system("touch uh_oh.txt"); }
> 
> This problem affects all Emacs versions affected by CVE-2024-53920.
> This means Emacs 24 and newer, and possibly also older versions.
> 
> A minimal fix, attached, is queued up for release with Emacs 31.2.
> We (the Emacs upstream maintainers) don't expect to backport the fix to
> older Emacs releases ourselves.
> 
> This fix is more aggressive than the one we have on our master branch in
> that it also implicitly disables the Eglot flymake backend.
> I think we will be able to undo that before releasing Emacs 31.2, but I
> wanted to get this notification out as soon as possible.
> 
> I would be grateful if someone could assign us a CVE for this issue.

Is GitHub going to assign a CVE here?  I think GitHub assignment would
be ok per this part of the GitHub CNA scope definition:
"vulnerabilities affecting open source projects discovered by security
researchers at GitHub or Microsoft not covered by another CNA’s scope."

If GitHub is not doing assignment, Red Hat can provide it instead.

-- 
Tomas Hoger / Red Hat Product Security

