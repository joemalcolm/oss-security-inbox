X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/26/6
Message-Id: <201403261419.52893.thijs@debian.org>
Date: Wed, 26 Mar 2014 14:19:52 +0100
From: Thijs Kinkhorst <thijs@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: postfixadmin SQL injection vulnerability
Content-Type: text/plain; charset=utf-8

Hi,

Postfixadmin has an SQL injection vulnerability. This vulnerability is only 
exploitable by authenticated users able to create new aliases. If the alias 
contains SQL code, the list-virtual.php overview triggers the vulnerability.

The vulnerability was fixed upstream in this commit:
http://sourceforge.net/p/postfixadmin/code/1650

Please assign a CVE name for this issue.


Thanks,

Thijs Kinkhorst
Debian Security Team

Download attachment "signature.asc " of type "application/pgp-signature" (491 bytes)
