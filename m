X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/22/6
Message-ID: <4CE9FD0E.1070502@redhat.com>
Date: Mon, 22 Nov 2010 13:18:06 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: mm: mem allocated invisible to oom_kill() when not attached to any threads
Content-Type: text/plain; charset=utf-8

This is the OOM dodging issue that can be triggered with Brad's 
reproducer at http://grsecurity.net/~spender/64bit_dos.c. Written
in the comments: "The second bug here is that the memory usage explodes 
within the kernel from a single 128k allocation in userland The 
explosion of memory isn't accounted for by any task so it won't be 
terminated by the OOM killer."

I don't recall seeing a CVE name assigned to this, so please assign one. 
Upstream is still attempting to fix this.

https://bugzilla.redhat.com/show_bug.cgi?id=625688#c0

Thanks, Eugene
