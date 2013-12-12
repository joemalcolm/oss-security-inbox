X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/12/12/9
Message-ID: <52A9A6FC.9060508@redhat.com>
Date: Thu, 12 Dec 2013 17:37:24 +0530
From: Ratul Gupta <ratulg@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: devscripts (uscan) broken handling of filenames with whitespace
Content-Type: text/plain; charset=utf-8

Hello,

A flaw is reported in the uscan script of devscripts:

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=732006

 From the bug:

If USCAN_EXCLUSION is enabled, uscan doesn't correctly handle filenames 
containing whitespace. This can be abused my malicious upstream to 
delete files of their choice.

Can a CVE please be assigned to it? devscripts looks like it will be in 
the next fedora release.

-- 
Regards,

Ratul Gupta / Red Hat Security Response Team

