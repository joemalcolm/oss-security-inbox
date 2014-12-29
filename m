X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/29/8
Message-ID: <54A1B237.9080203@internot.info>
Date: Tue, 30 Dec 2014 06:57:43 +1100
From: Joshua Rogers <honey@...ernot.info>
To: oss-security@...ts.openwall.com
Subject: CVE Request(s): GnuPG 2/GPG2
Content-Type: text/plain; charset=utf-8

Hi,

I found multiple vulnerabilities in GPG2.
Could some CVE-ID(s) be assigned please.
Patches were provided by multiple people.

--
Double free in scd/command.c:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=773471

Double free in sm/minip12.c:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=773472


These two seem related in code:
Return after free in sm/gpgsm.c:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=773473
Return after free in dirmngr/ldapserver.c:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=773523
--

Thanks,
-- 
-- Joshua Rogers <https://internot.info/>


Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
