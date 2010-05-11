X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/11/3
Message-ID: <Pine.GSO.4.64.1005111923070.21091@faron.mitre.org>
Date: Tue, 11 May 2010 19:24:51 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: CVE assignment: ghostscript stack-based overflow
Content-Type: text/plain; charset=utf-8


FYI.  The researcher told me that some distros were notified 
pre-disclosure, but I had already assigned this CVE when I found out.


======================================================
Name: CVE-2010-1869
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2010-1869
Reference: MISC:http://www.checkpoint.com/defense/advisories/public/2010/cpai-10-May.html

Stack-based buffer overflow in the parser function in GhostScript 8.70
and 8.64 allows context-dependent attackers to execute arbitrary code
via a crafted PostScript file.


