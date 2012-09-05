X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/09/05/12
Message-ID: <20120905114850.GB4164@suse.de>
Date: Wed, 5 Sep 2012 13:48:50 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: pidgin lack of SSL checks
Content-Type: text/plain; charset=utf-8

Hi,

Beautiful rant... needs CVE I guess.
http://developer.pidgin.im/ticket/15308

Missing SSL checks in libpurples NSS SSL plugin allows MitM attacks.

(funny side note here is that gnutls 3.x is GPLv3 and effectively
 could taint any library/binary linking with it to be GPLv3 or newer.)

Ciao, Marcus
-- 
Open Linux Security Engineer Position at SUSE: http://bit.ly/Li4RbS
