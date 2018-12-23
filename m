X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/12/23/2
Message-ID: <20181223093130.77312548@computer>
Date: Sun, 23 Dec 2018 09:31:30 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Use after free in monit / _handleEvent
Content-Type: text/plain; charset=utf-8

Hi,

There's a use after free in monit that shows up if you run it for a
while on an active system with address sanitizer enabled.

I reported this in august:
https://bitbucket.org/tildeslash/monit/issues/764/use-after-free-in-function-_handleevent

Fix is here:
https://bitbucket.org/tildeslash/monit/commits/5827927c4623

The fix is unreleased, the current version (5.25.2) is still affected.


-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
