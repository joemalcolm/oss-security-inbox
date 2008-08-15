X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/15/4
Message-ID: <20080815134502.GA8133@manyfish.co.uk>
Date: Fri, 15 Aug 2008 14:45:02 +0100
From: Joe Orton <joe@...yfish.co.uk>
To: oss-security@...ts.openwall.com
Subject: CVE request for neon
Content-Type: text/plain; charset=utf-8

I haven't had any luck contacting either the Debian maintainer or the 
Debian BTS to update details of this issue.

----- Forwarded message from Joe Orton <joe@...yfish.co.uk> -----

Hi, can you assign a CVE number for an issue in neon:

A NULL pointer deference in the Digest authentication support in neon 
versions 0.28.0 through 0.28.2 inclusive allows a malicious server to 
crash a client application, resulting in possible denial of service.

Reference: http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=476571

Regards, Joe

----- End forwarded message -----

