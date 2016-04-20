X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/20/5
Message-ID: <20160420091832.GA580@lorien.valinor.li>
Date: Wed, 20 Apr 2016 11:18:32 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: CVE Assignments MITRE <cve-assign@...re.org>
Subject: CVE Request: perl: denial-of-service / Regexp-matching "hangs" indefinitely on illegal input using binmode :utf8 using 100%CPU
Content-Type: text/plain; charset=utf-8

Hi

A bug in perl can cause regular expressions an malformed UTF8 inputs
to go into a forever loop and consume 100% CPU. The issue was found to
drive a realworld web application into an infinite loop"

The Upstream bugreport about this issue:

https://rt.perl.org/Public/Bug/Display.html?id=123562

Upstream commit:

http://perl5.git.perl.org/perl.git/commitdiff/22b433eff9a1ffa2454e18405a56650f07b385b5
(which e.g. has been as well cherry-picked back to the maint-5.22
branch).

It as well was reported in Debian as:

https://bugs.debian.org/821848

Could you assign a CVE for this issue?

Regards,
Salvatore

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
