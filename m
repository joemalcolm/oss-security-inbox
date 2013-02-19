X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/19/1
Message-ID: <20130219094731.GA925@elende>
Date: Tue, 19 Feb 2013 10:47:31 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE request: zoneminder: local file inclusion vulnerability
Content-Type: text/plain; charset=utf-8

Hi

In zoneminder forum the following announce was done already in 2011:

 http://www.zoneminder.com/forums/viewtopic.php?f=1&t=17979

where zoneminder is prone to a local file inclusion vulnerability.
>From upstream versions prior to 1.24.4 are affected and the issue was
fixed in 1.24.4 and 1.25.0.

SVN commits fixing this issue for the 1.24.x versions are r3483 and
r3488, and patches:

http://www.zoneminder.com/downloads/lfi-patch.txt
http://www.zoneminder.com/downloads/lfi-patch2.txt

I haven't found a CVE assigned to this already. In case I did not miss
something, could you allocate a CVE for this issue?

Debian Bug: http://bugs.debian.org/700912

Regards,
Salvatore
