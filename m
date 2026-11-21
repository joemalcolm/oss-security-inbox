X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/22/1
Message-ID: <awH4BFsQy1BuA060@netmeister.org>
Date: Sat, 21 Nov 2026 14:59:00 -0500
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: Re: Ghostscript 10.08.0 fixes multiple CVEs, including "upload2shell"
Content-Type: text/plain; charset=utf-8

Alan Coopersmith <alan.coopersmith@...cle.com> wrote:
> Ghostscript 10.08.0 was released on 2026-09-08

> https://pwn.ai/upload2shell was published today additionally identifying
> CVE-2026-125396 as also fixed in this release, and detailing ways it was
> found to be exploitable through other programs passing files to Ghostscript.

This page lists a number of projects that have
individually fixed the issue.  If GS published a fix
on 2026-09-08, then we should assume that this
vulnerability was public as of that date.  But this
website also notes that WordPress fixed this as far
back as August 12th:
https://github.com/WordPress/wordpress-develop/security/advisories/GHSA-8vr3-7mxf-gx8w

The disclosure coordination around this then leaves
much to be desired.

> The upload2shell website also got mentioned today in:
> https://www.nytimes.com/2026/11/21/us/politics/tech-outages-ai-disruptions.html
> which may bring additional attention to this issue.

I keep wondering who is reaching out to whom here to
cover these findings.  I have a distinct feeling that
the PR departments of these companies that specialize
on AI-driven vulnerability discovery are driving the
coverage, and I'm not loving that.

-Jan
