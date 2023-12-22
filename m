X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/22/3
Message-ID: <20231222131102.1b8083c4.hanno@hboeck.de>
Date: Fri, 22 Dec 2023 13:11:02 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: New SMTP smuggling attack
Content-Type: text/plain; charset=utf-8

In case this helps:

SEC Consult has not published a test tool, and it seems they have not
tested many mailservers.

I have tried to understand the attack, and came up with a preliminary
test script myself:
https://github.com/hannob/smtpsmug

This is pretty much work in progress, not really documented, and I am
still unsure what exactly the "right" behavior should be.
But I'm sharing it in case it helps others. I may or may not update /
improve it in the coming days.

By default it tests whether a server accepts the <lf>.<lf> behavior.
For testing the sending side, you will need to setup a receiving server
and analyze it manually.


-- 
Hanno Böck
https://hboeck.de/
