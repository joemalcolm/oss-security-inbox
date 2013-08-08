X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/08/6
Message-ID: <333828963.13226430.1375954935713.JavaMail.root@redhat.com>
Date: Thu, 8 Aug 2013 05:42:15 -0400 (EDT)
From: Jan Lieskovsky <jlieskov@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>, Pedro Ribeiro <pedrib@...il.com>, Frank Warmerdam <warmerdam@...ox.com>
Subject: CVE Request -- Four (stack-based) buffer overflows and one use-after-free in libtiff v4.0.3 reported by Pedro Ribeiro
Content-Type: text/plain; charset=utf-8

Hello Kurt, Steve, vendors,

  Pedro Ribeiro has recently reported the following five security
flaws being present in the tools of TIFF library:
  [1] http://www.asmail.be/msg0055359936.html

While they are present in the tools (=> not that urgent like they
would be in the library itself), there's been CVE ids assigned
in the past for TIFF library tools issues too. To mention some examples:
  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2013-1961
  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2013-1960
  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2012-4564
  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2012-3401

Since there doesn't seem to be CVE identifiers assigned for these
[1] issues yet, could you allocate them?

FWIW regarding the patches and upstream bugs - if my information
is up2date, there aren't upstream bugs and patches for these issues
yet.

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
