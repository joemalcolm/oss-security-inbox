X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/30/1
Message-Id: <200903302111.33942.steffen.joeris@skolelinux.de>
Date: Mon, 30 Mar 2009 21:11:33 +1100
From: Steffen Joeris <steffen.joeris@...lelinux.de>
To: oss-security@...ts.openwall.com
Subject: CVE id request: auth2db
Content-Type: text/plain; charset=utf-8

Hi

auth2db uses addslashes() to protect against SQL injections. This should be 
mysql_real_escape_string(), so it also works, if multibyte character 
encodings are used.

Debian Bug report:
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=521823

Could I please get a CVE id for this?

Cheers
Steffen

Download attachment "signature.asc " of type "application/pgp-signature" (198 bytes)
