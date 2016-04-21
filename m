X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/21/5
Message-ID: <20160421172959.GA8640@openwall.com>
Date: Thu, 21 Apr 2016 20:30:00 +0300
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: list mail bounces; libtiff
Content-Type: text/plain; charset=utf-8

Hi,

About 10 of you have e-mailed the list admins about "ezmlm warning"
messages that some of you received today, so I'll reply to all in here
(expecting that more of you are wondering, but haven't e-mailed us).

Yes, there was a mail delivery problem from oss-security on April 8,
resolved on April 9.

Several of the messages were initially queued up, and when the problem
was resolved and they were finally attempted to be delivered, they could
not be delivered to some of you, as well as to some of the third-party
archives, presumably because of those servers' use of greylisting (or
any other intermittent errors).  Crucially, there was not a second
delivery attempt because of those messages' age in the queue.  Indeed,
this is incompatible with greylisting, and in hindsight we should have
temporarily increased the allowable queue age before resolving the
initial problem.

The official archive has the full set of messages posted on April 8:

http://www.openwall.com/lists/oss-security/2016/04/08/

Specifically, the multiple notifications about different libtiff
vulnerabilities were affected, so if libtiff is relevant to you please
review the above archive page.

Alexander
