X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/09/04/9
Message-ID: <5348211.Bu8K2RGd8j@devil>
Date: Wed, 04 Sep 2013 16:39:12 +0200
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: Kernel PID Spoofing Privilege Escalation Vulnerability
Content-Type: text/plain; charset=utf-8

A vulnerability has been reported in the Linux Kernel, which can be exploited 
by malicious, local users to gain escalated privileges.

The vulnerability is caused due to an error within the "scm_check_creds()" 
function (net/core/scm.c) and can be exploited to gain escalated privileges by 
spoofing a PID.

The vulnerability is reported in version 3.10.10.


Solution:
Fixed in the GIT repository.

Provided and/or discovered by:
Disclosed within a GIT commit.

Original Advisory:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/net/core/scm.c?id=d661684cf6820331feae71146c35da83d794467e

Source: https://secunia.com/advisories/54675/
-- 
Agostino Sarubbo
Gentoo Linux Developer
