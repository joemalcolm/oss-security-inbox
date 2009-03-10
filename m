X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/10/1
Message-ID: <49B6EDCD.9040705@gentoo.org>
Date: Tue, 10 Mar 2009 23:46:37 +0100
From: Pierre-Yves Rofes <py@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE Request: courier-authlib < 0.62.0 SQL Injection
Content-Type: text/plain; charset=utf-8

Hi,

>From Changelog:

"0.62.0
2008-12-17  Sam Varshavchik  <mrsam@...rier-mta.com>

* authpgsqllib.c: Use PQescapeStringConn() instead of removing all
 apostrophes from query parameters. This fixes a potential SQL injection
 vulnerability if the Postgres database uses a non-Latin locale."

References:
http://www.courier-mta.org/authlib/changelog.html
http://bugs.gentoo.org/show_bug.cgi?id=252576


Thanks,


-- 
Pierre-Yves Rofes
Gentoo Linux Security Team
