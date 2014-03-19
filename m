X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/19/2
Message-ID: <20140319130519.GH21050@suse.de>
Date: Wed, 19 Mar 2014 14:05:19 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: rack-ssl rubygem: XSS in error page
Content-Type: text/plain; charset=utf-8

Hi,

The latest version of rack-ssl rubygem (1.4.0) contains a commit that fixes a
XSS vulnerability in the error page.

https://github.com/josh/rack-ssl/commit/9d7d7300b907e496db68d89d07fbc2e0df0b487b

"Some adapters (i.e. jruby-rack) will pass through bad URIs, then display
the resulting exception. This creates an attack vector for XSS attacks.
"

Needs a CVE I think.

Ciao, Marcus
