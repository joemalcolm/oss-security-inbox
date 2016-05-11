X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/11/2
Message-ID: <5732F3E2.9070409@redhat.com>
Date: Wed, 11 May 2016 10:57:06 +0200
From: Adam Maris <amaris@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: Mishandling the first propagated copy being a slave
Content-Type: text/plain; charset=utf-8

Hello,

When the first propagated copy was a slave, it results into kernel oops.
This oops happens with the namespace_sem held and can be triggered by
non-root users.

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=5ec0811d30378ae104f250bfc9b3640242d81e3f

Regards,

-- 
Adam Mariš, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2


