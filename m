X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/08/1
Message-ID: <56DE2409.1060603@isc.org>
Date: Tue, 8 Mar 2016 01:59:53 +0100
From: ISC Security Officer <security-officer@....org>
To: oss-security@...ts.openwall.com
Cc: ISC Security Officer <security-officer@....org>
Subject: ISC DHCP vulnerability CVE-2016-2774 is now public
Content-Type: text/plain; charset=utf-8

Please be advised that ISC announced a security advisory for a
vulnerability in the ISC DHCP servers.

CVE-2016-2774 is a denial-of-service vector which can be exploited
against running ISC DHCP servers by opening (and never closing) a large
number of TCP connections to the ports the server is using for
inter-process communication.

https://kb.isc.org/article/AA-01354

Kind Regards,
Marcin Siodelski
ISC Security Officer
