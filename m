X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/01/11
Message-ID: <e441740a-f96e-6034-f0d4-bf0bcd72ad19@isc.org>
Date: Tue, 1 Nov 2016 15:06:29 -0500
From: ISC Security Officer <security-officer@....org>
To: oss-security@...ts.openwall.com
Cc: ISC Security Officer <security-officer@....org>
Subject: BIND9 CVE-2016-8864: A problem handling responses containing a DNAME,answer can lead to an assertion failure
Content-Type: text/plain; charset=utf-8

Please be advised that ISC publicly announced a vulnerability in the
BIND 9 software.

CVE-2016-8864 is a denial-of-service vector which can potentially be
exploited against BIND 9 servers.  All versions prior to the current
releases are vulnerable.

Our full CVE text can be found at https://kb.isc.org/article/AA-01434/0

New releases of BIND, including security fixes for this vulnerability,
are available at: www.isc.org/downloads/

Release notes can be obtained using the following links:

ftp://ftp.isc.org/isc/bind9/9.9.9-P4/
ftp://ftp.isc.org/isc/bind9/9.10.4-P4/
ftp://ftp.isc.org/isc/bind9/9.11.0-P1/

-- 
Brian Conry
ISC Support
Acting Security Officer





Download attachment "signature.asc" of type "application/pgp-signature" (456 bytes)
