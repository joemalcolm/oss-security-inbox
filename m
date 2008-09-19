X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/19/1
Message-Id: <200809190440.16342.hanno@hboeck.de>
Date: Fri, 19 Sep 2008 04:40:16 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request (gallery2)
Content-Type: text/plain; charset=utf-8

Am Thursday 18 September 2008 schrieb Josh Bressers:
> A new version of Gallery 2 is out that fixes three security flaws:
>
> http://gallery.menalto.com/gallery_2.2.6_released
> http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=499408

 
" Insecure cookies over HTTPS - When accessing Gallery over HTTPS, cookies 
were missing the "secure" flag, leaving the connection vulnerable to cookie 
sniffing attacks. 
 The Gallery team would like to thank Hanno Boeck for bringing this issue to 
our attention."

CVE-2008-3662 for this one.


-- 
Hanno Böck		Blog:		http://www.hboeck.de/
GPG: 3DBD3B20		Jabber/Mail:	hanno@...eck.de

Download attachment "signature.asc " of type "application/pgp-signature" (198 bytes)
