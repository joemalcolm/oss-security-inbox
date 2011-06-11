X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/11/1
Message-ID: <4DF3BD4A.2060001@pre-sense.de>
Date: Sat, 11 Jun 2011 21:08:58 +0200
From: Timo Warns <warns@...-sense.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: buffer overflow in tftp-hpa
Content-Type: text/plain; charset=utf-8

The tftp-hpa daemon contained a buffer overflow vulnerability in the
function for setting the utimeout option. As the daemon accepts this
option from clients, the buffer overflow can be remotely exploited.

For a patch, see

> git clone http://www.kernel.org/pub/scm/network/tftp/tftp-hpa.git/
> git diff 2864 f303

Thanks, Timo
