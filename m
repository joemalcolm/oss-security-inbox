X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/23/4
Message-ID: <20101123164647.GA4925@suse.de>
Date: Tue, 23 Nov 2010 17:46:47 +0100
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel address leaks
Content-Type: text/plain; charset=utf-8

On Tue, Nov 23, 2010 at 09:59:13AM +0100, Yves-Alexis Perez wrote:
> On lun., 2010-11-22 at 18:54 -0500, Michael Gilbert wrote:
> > Oh, and if you get CVEs assigned, that kind of forces them to fix the
> > problem, right?
> > 
> I'm not that sure (there are CVEs for issues considered too small by the
> developers involved, not only in Linux, which are still opened), and I'm
> not sure using CVE system for “blackmailing” is a good usage for that
> tool.

CVEs are for security problems. Leaking kernel function addresses to
userspace is not a security issue in my opinion.

(Leaking content of kernel memory however is.)

Ciao, Marcus
