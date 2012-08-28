X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/28/9
Message-Id: <201208280125.42079.geissert@debian.org>
Date: Tue, 28 Aug 2012 01:25:41 -0500
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Cc: secteam@...ebsd.org
Subject: CVE for FreeBSD SCTP remote DoS?
Content-Type: text/plain; charset=utf-8

Hi everyone,

There appears to be a remote DoS (via a NULL pointer dereference in the 
kernel) vulnerability in FreeBSD's SCTP implementation[1].

Has a CVE id been assigned to it already?

[1]http://www.exploit-db.com/exploits/20226/

Kind regards,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
