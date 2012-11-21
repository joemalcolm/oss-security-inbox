X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/11/21/1
Message-ID: <20121121132013.350a82fb@chromobil.local>
Date: Wed, 21 Nov 2012 13:20:13 +0100
From: Stefan Bühler <stbuehler@...httpd.net>
To: oss-security@...ts.openwall.com
Cc: lighttpd-announce@...ts.lighttpd.net
Subject: lighttpd 1.4.32 released, fixing CVE-2012-5533
Content-Type: text/plain; charset=utf-8

Hi,

we just released lighttpd 1.4.32, fixing a DoS reported by Jesse
Sipprell from McClatchy Interactive, Inc.

Sending "Connection: TE,,Keep-Alive" as header will trigger an endless
loop; as lighttpd is single threaded all request handling will stop
immediately.

Only lighttpd 1.4.31 is affected by this.

For more details and other changes see:
* http://www.lighttpd.net/2012/11/21/1-4-32/
* http://download.lighttpd.net/lighttpd/security/lighttpd_sa_2012_01.txt

Regards,
Stefan

Download attachment "signature.asc" of type "application/pgp-signature" (837 bytes)
