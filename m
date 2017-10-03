X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/03/4
Message-ID: <F90F7078-F65C-46F0-8F51-CB4FB23B5DD7@gatech.edu>
Date: Tue, 3 Oct 2017 14:39:55 +0000
From: "Xu, Meng" <meng.xu@...ech.edu>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin
Content-Type: text/plain; charset=utf-8

Hello,

In function  smb_strdupin()  of file sys/netsmb/smb_subr.c,
smb_strdupin() tried to roll a copyin() based strlen to allocate a buffer
and then blindly copyin that size.  Of course, a malicious user program
could simultaneously manipulate the buffer, resulting in a non-terminated
string being copied.

Bug report: https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=222687
Patch: https://svnweb.freebsd.org/base?view=revision&revision=324102

Please help assign a CVE to it.

Thanks,
Meng

