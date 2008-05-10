X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/05/10/1
Message-Id: <200805101441.21478.rbu@gentoo.org>
Date: Sat, 10 May 2008 14:41:21 +0200
From: Robert Buchholz <rbu@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: Linux vfs: fix permission checking in sys_utimensat
Content-Type: text/plain; charset=utf-8

This patch has been released in Linux 2.6.25.3:

http://git.kernel.org/?p=linux/kernel/git/stable/linux-2.6.25.y.git;a=commit;h=f9dfda1ad0637a89a64d001cf81478bd8d9b6306
> If utimensat() is called with both times set to UTIME_NOW or one of them 
> to UTIME_NOW and the other to UTIME_OMIT, then it will update the file 
> time without any permission checking.
>
> I don't think this can be used for anything other than a local DoS, but
> could be quite bewildering at that (e.g.  "Why was that large source tree
> rebuilt when I didn't modify anything???")


Robert

Download attachment "signature.asc " of type "application/pgp-signature" (190 bytes)
