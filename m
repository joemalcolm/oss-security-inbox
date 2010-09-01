X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/01/1
Message-ID: <4C7DE059.3010401@redhat.com>
Date: Wed, 01 Sep 2010 13:10:49 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2010-2954 kernel: irda null ptr deref
Content-Type: text/plain; charset=utf-8

Reported by Taviso Ormandy.
Patch at: http://www.spinics.net/lists/netdev/msg139404.html.
References:
https://bugzilla.redhat.com/CVE-2010-2954
http://twitter.com/taviso/status/22635752128

Quick check, introduced in 61e44b48 (v2.6.24 and above).

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
