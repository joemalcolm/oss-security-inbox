X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/11/8
Message-ID: <20141211182323.1b5113fb@pc>
Date: Thu, 11 Dec 2014 18:23:23 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: PIE bypass using VDSO ASLR weakness
Content-Type: text/plain; charset=utf-8

On Thu, 11 Dec 2014 11:15:44 +0530
Reno Robert <renorobert@...il.com> wrote:

> Given that ASLR is not effective in VDSO and comes down to 11 quality
> bits as per pax test making return-to-vdso feasible even for PIE
> binary, whether this should be considered as a bug and CVE be
> assigned?

I opened a bug in the kernel's bugtracker:
https://bugzilla.kernel.org/show_bug.cgi?id=89591

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Content of type "application/pgp-signature" skipped
