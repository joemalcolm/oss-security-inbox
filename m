X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/03/6
Message-ID: <20171003152213.u6zlrgu3nb7yk7ng@eldamar.local>
Date: Tue, 3 Oct 2017 17:22:13 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin
Content-Type: text/plain; charset=utf-8

Hi

On Tue, Oct 03, 2017 at 02:39:55PM +0000, Xu, Meng wrote:
> Hello,
> 
> In function  smb_strdupin()  of file sys/netsmb/smb_subr.c,
> smb_strdupin() tried to roll a copyin() based strlen to allocate a buffer
> and then blindly copyin that size.  Of course, a malicious user program
> could simultaneously manipulate the buffer, resulting in a non-terminated
> string being copied.
> 
> Bug report: https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=222687
> Patch: https://svnweb.freebsd.org/base?view=revision&revision=324102
> 
> Please help assign a CVE to it.

CVE's are not anymore requested via the oss-security list. If you want
to request one please have a look at https://cveform.mitre.org/

Once you have the CVE assigned, can you please loop back the
assignement in this thread?

Regards,
Salvatore
