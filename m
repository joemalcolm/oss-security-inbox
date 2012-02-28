X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/28/8
Message-ID: <20120228175522.GA14359@devzero.fr>
Date: Tue, 28 Feb 2012 18:55:23 +0100
From: vladz <vladz@...zero.fr>
To: oss-security@...ts.openwall.com
Subject: CVE request: init script x11-common creates directories in insecure manners
Content-Type: text/plain; charset=utf-8

Hi,

I've reported a small vulnerability to Debian.  Due to an insecure file
creation, a local user can gain root privileges right after the 
"x11-common" service is started.

  http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=661627

Could you allocate CVE id for this issue?

Thank you,
vladz.

