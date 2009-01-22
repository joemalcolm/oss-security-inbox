X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/22/4
Message-ID: <Pine.GSO.4.51.0901221718140.27455@faron.mitre.org>
Date: Thu, 22 Jan 2009 17:18:19 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: coley@...us.mitre.org
Subject: Re: mod-auth-mysql: SQL injection
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-2384
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-2384
Reference: MLIST:[oss-security] 20090121 mod-auth-mysql: SQL injection
Reference: URL:http://openwall.com/lists/oss-security/2009/01/21/10
Reference: CONFIRM:http://klecker.debian.org/~white/mod-auth-mysql/CVE-2008-2384_mod-auth-mysql.patch
Reference: BID:33392
Reference: URL:http://www.securityfocus.com/bid/33392

SQL injection vulnerability in mod_auth_mysql.c in the mod-auth-mysql
(aka libapache2-mod-auth-mysql) module for the Apache HTTP Server 2.x
allows remote attackers to execute arbitrary SQL commands via
multibyte character encodings for unspecified input.


