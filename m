X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/04/1
Message-ID: <20170104131248.GA28596@suse.de>
Date: Wed, 4 Jan 2017 14:12:48 +0100
From: Sebastian Krahmer <krahmer@...e.com>
To: oss-security@...ts.openwall.com
Cc: netblue30@...oo.com
Subject: Firejail local root exploit
Content-Type: text/plain; charset=utf-8

Hi

Please find attached PoC for firejail, which seems to be quite
popular sandboxing tool.

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@...e.com - SuSE Security Team


View attachment "firenail.c" of type "text/x-c" (2589 bytes)
