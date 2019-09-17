X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/09/17/3
Message-ID: <20190917195826.1cdb3e39@computer>
Date: Tue, 17 Sep 2019 19:58:26 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: OpenDMARC buffer overflows
Content-Type: text/plain; charset=utf-8

Hi,

In light of the recent OpenDMARC issue I had a look at their Github PR
tracker. This one
https://github.com/trusteddomainproject/OpenDMARC/pull/45
caught my attention.

Quote:
"Fix a few potential crashes

    Fix missing from_domain check for store_dkim
    Add checks for longer than buffer while parsing record"


This seems to add and fix a few length checks for buffers, i.e. fixing
buffer overflows.
I haven't analyzed it in detail.

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
