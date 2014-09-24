X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/24/10
Message-ID: <87d2alglkw.fsf@mid.deneb.enyo.de>
Date: Wed, 24 Sep 2014 16:05:51 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Cc: chet.ramey@...e.edu
Subject: CVE-2014-6271: remote code execution through bash
Content-Type: text/plain; charset=utf-8

Stephane Chazelas discovered a vulnerability in bash, related to how
environment variables are processed: trailing code in function
definitions was executed, independent of the variable name.

In many common configurations, this vulnerability is exploitable over
the network.

Chet Ramey, the GNU bash upstream maintainer, will soon release
official upstream patches.
