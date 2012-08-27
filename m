X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/27/10
Message-Id: <201208271543.41921.geissert@debian.org>
Date: Mon, 27 Aug 2012 15:43:39 -0500
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: letodms multiple issues
Content-Type: text/plain; charset=utf-8

Hi,

Multiple vulnerabilities have been found in LetoDMS[1].
Could CVE ids be assigned, please? Thanks in advance.

They are said to be fixed in 3.3.7[2], quoting the changelog:

> --------------------------------------------------------------------------
> 
>                     Changes in version 3.3.7
> -------------------------------------------------------------------------- 
> major security update which fixeѕ lots of possible XSS and
> CSRF attacts

Without looking at anything else other than the diff, I'm not personally 
convinced that the changes are enough/that there are no other 
vulnerabilities. That said, I'm most likely not going to spend time on it.

[1]http://www.exploit-db.com/exploits/20759/
[2]http://forums.letodms.com/showthread.php?tid=768

Regards,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
