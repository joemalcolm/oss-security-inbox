X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/20/1
Message-ID: <alpine.DEB.1.10.1103201427440.16909@eru.sfritsch.de>
Date: Sun, 20 Mar 2011 14:37:09 +0100 (CET)
From: Stefan Fritsch <sf@...itsch.de>
To: oss-security@...ts.openwall.com
cc: sgunderson@...foot.com, team@...urity.debian.org
Subject: CVE request: MPM-ITK module for Apache HTTPD
Content-Type: text/plain; charset=utf-8

Hi,

please assign a CVE id for this issue:

In certain configurations, the MPM-ITK module for Apache HTTPD serves a 
request as root user instead of the run user configured in the HTTPD 
configuration:
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=618857

Cheers,
Stefan
