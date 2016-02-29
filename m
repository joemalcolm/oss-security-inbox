X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/29/1
Message-ID: <56D40C3B.3090806@redhat.com>
Date: Mon, 29 Feb 2016 10:15:39 +0100
From: Adam Maris <amaris@...hat.com>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: CVE request: Heap buffer overflow in pcretest
Content-Type: text/plain; charset=utf-8

Heap-based buffer overread caused by specially crafted input triggering
infinite loop in pcretest.c was found affecting pcre 8.38. pcretest went
into loop if global matching was requested with an ovector size less than 2.

Upstream bug:

https://bugs.exim.org/show_bug.cgi?id=1777

Upstream fix:

http://vcs.pcre.org/pcre?view=revision&revision=1637

Regards,

-- 
Adam Mariš, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2


