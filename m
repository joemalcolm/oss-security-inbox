X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/11/3
Message-Id: <200903111204.26800.steffen.joeris@skolelinux.de>
Date: Wed, 11 Mar 2009 12:04:21 +1100
From: Steffen Joeris <steffen.joeris@...lelinux.de>
To: oss-security@...ts.openwall.com
Cc: Pierre-Yves Rofes <py@...too.org>
Subject: Re: CVE Request: courier-authlib < 0.62.0 SQL Injection
Content-Type: text/plain; charset=utf-8

Hi Pierre-Yves

> From Changelog:
>
> "0.62.0
> 2008-12-17  Sam Varshavchik  <mrsam@...rier-mta.com>
>
> * authpgsqllib.c: Use PQescapeStringConn() instead of removing all
>  apostrophes from query parameters. This fixes a potential SQL injection
>  vulnerability if the Postgres database uses a non-Latin locale."
>
> References:
> http://www.courier-mta.org/authlib/changelog.html
> http://bugs.gentoo.org/show_bug.cgi?id=252576
This should be CVE-2008-2380.


Cheers
Steffen

Download attachment "signature.asc " of type "application/pgp-signature" (198 bytes)
