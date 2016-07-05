X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/05/3
Message-ID: <1467728683@msgid.manchmal.in-ulm.de>
Date: Tue, 5 Jul 2016 16:32:05 +0200
From: Christoph Biedl <debian.axhn@...chmal.in-ulm.de>
To: oss-security@...ts.openwall.com
Subject: CVE-2016-6160: Segmentation fault in tcprewrite (tcpreplay)
Content-Type: text/plain; charset=utf-8

Hello,

as already reported in Debian BTS#829350, the tcprewrite program, part
of the tcpreplay suite, does not check the size of the frames it
processes. Huge frames may trigger a segmentation fault, and they
occur on interfaces with an MTU of or close to 65536. For example, the
loopback interface lo of the Linux kernel has such a value.

This has been assigned CVE-2016-6160.

The Debian BTS also contains a fix.

    Christoph

[1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=829350

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
