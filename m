X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/01/12/3
Message-ID: <9151rn19-0on4-96s6-p3oq-qq07188p9n0r@inai.de>
Date: Mon, 12 Jan 2026 10:42:33 +0100 (CET)
From: Jan Engelhardt <ej@...i.de>
To: oss-security@...ts.openwall.com
cc: Alan Coopersmith <alan.coopersmith@...cle.com>
Subject: Re: Null Pointer Dereference in HarfBuzz
Content-Type: text/plain; charset=utf-8


On Monday 2026-01-12 04:09, Jacob Bachmeyer wrote:
>
> In short, this is a crash bug, but not a security issue.  This is different
> from (for example) a parser bug that results in NULL being dereferenced if
> crafted input is processed.
>
> Are we now using CVE IDs as some kind of global bug tracker?

Isn't that how the Linux kernel works these days,
as per <https://docs.kernel.org/process/cve.html>:

"almost any bug might be exploitable to compromise the security of
the kernel, but the possibility of exploitation is often not evident
when the bug is fixed"
