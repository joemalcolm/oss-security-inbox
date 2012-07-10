X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/07/10/9
Message-ID: <20120710140703.GA9261@openwall.com>
Date: Tue, 10 Jul 2012 18:07:03 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: libdbus hardening
Content-Type: text/plain; charset=utf-8

On Tue, Jul 10, 2012 at 03:58:46PM +0200, Florian Weimer wrote:
> On 07/10/2012 03:43 PM, Solar Designer wrote:
> >We already have __secure_getenv() in glibc, which I think is what
> >libraries like this should be using on systems with glibc.
> 
> Sebastian's patches also include a check on prctl(PR_GET_DUMPABLE).  I'm 
> not sure if the libc approach (compare effective and real UIDs/GIDs on 
> process start and base process environment trust decisions on that) is 
> equivalent.

glibc also uses AT_SECURE.

PR_GET_DUMPABLE catches the extra case of a process that started e.g. as
root and has since switched creds, but do we actually want to restrict
processing of env vars in that case?  Perhaps not, and so AT_SECURE is
more appropriate.

Alexander
