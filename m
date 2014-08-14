X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/14/6
Message-ID: <CACXSKC9=iK2RRQ3_Xz55bO7vVW3+LvjHdvTV_S9fvCYHGLOi_A@mail.gmail.com>
Date: Thu, 14 Aug 2014 12:48:42 +0700
From: Vitaly Nikolenko <vnik5287@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: ro bind mount bypass using user namespaces
Content-Type: text/plain; charset=utf-8

just wanted to mention that the test script was also submitted in this
commit
https://git.kernel.org/cgit/linux/kernel/git/ebiederm/user-namespace.git/commit/?h=for-linus&id=db181ce011e3c033328608299cd6fac06ea50130

On Ubuntu 14.04.1, mounting with MS_REMOUNT | MS_BIND (within a user
namespace) resets nosuid, nodev, noexec flags.

