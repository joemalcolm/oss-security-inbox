X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/07/8
Message-ID: <8761oqnbav.fsf@mid.deneb.enyo.de>
Date: Fri, 07 Feb 2014 17:21:28 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: oath-toolkit PAM module OTP token invalidation issue
Content-Type: text/plain; charset=utf-8

Bas van Schaik discovered that commented-out lines in /etc/users.oath
have an undesired side effect:

http://lists.nongnu.org/archive/html/oath-toolkit-help/2013-12/msg00000.html

There is a test file with comments in the distribution, so I believe
this is an actual bug with security implications, not accidental
misuse of the file format.
