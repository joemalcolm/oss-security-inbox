X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/03/30/10
Message-ID: <Pine.GSO.4.64.1003301632120.4709@faron.mitre.org>
Date: Tue, 30 Mar 2010 16:34:35 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: libesmtp@...fford.uklinux.net, security@...ntu.com
Subject: Re: CVE Request: libesmtp does not check NULL bytes in commonName
Content-Type: text/plain; charset=utf-8


On Wed, 3 Mar 2010, Kees Cook wrote:

> I just noticed that libesmtp does not appear to handle NULL-byte CNs, as
> seen with the original browser-based issue:
> http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-2408

Use CVE-2010-1192

> Related to this are failures in wildcard handling:
> http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=311191

Use CVE-2010-1194

I'm guessing that upstream 1.0.4 and earlier are affected by both 
problems.

- Steve
