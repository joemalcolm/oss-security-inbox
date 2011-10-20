X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/20/3
Message-ID: <87k4800w1o.fsf@mid.deneb.enyo.de>
Date: Thu, 20 Oct 2011 12:58:11 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: PR attack against XML Encryption
Content-Type: text/plain; charset=utf-8

A German university has released a press release, alleging a
vulnerability in the W3C XML Encryption standard.  Apparently, error
reporting from existing implementations can be used as an oracle to
recover information from messages encrypted in CBC mode.

Details have not been published, as far as I know.  Does anybody know
more?
