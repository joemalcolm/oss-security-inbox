X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/12/8
Message-ID: <1723747197.6194581234463551282.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 12 Feb 2009 13:32:31 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Cc: coley@...re.org
Subject: CVE Request (ruby)
Content-Type: text/plain; charset=utf-8

Hello Steve,

I ran across this Debian bug:
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=513528

I did some investigating in this.  It seems almost nothing uses Ruby's OpenSSL:OCSP
library, but given this could be a problem, I'd like to fix it.

Thanks.

-- 
    JB
