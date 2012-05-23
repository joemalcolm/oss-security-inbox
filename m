X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/23/4
Message-ID: <CAJzxamJYb5tHL+92vXkX+yWYpaPMh+7G-oF_hud6F+gZpRxmRw@mail.gmail.com>
Date: Wed, 23 May 2012 18:39:10 +1000
From: David Black <disclosure@....org>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE request: cobbler command injection
Content-Type: text/plain; charset=utf-8

It was reported that it was possible to perform command injection
through the cobbler xmlrpc api[0][1]. This issue was fixed in the git
commit found at [2].
Can a CVE be assigned to this issue?


[0] https://bugs.launchpad.net/ubuntu/+source/cobbler/+bug/978999
[1] https://github.com/cobbler/cobbler/issues/141
[2] https://github.com/cobbler/cobbler/commit/6d9167e5da44eca56bdf42b5776097a6779aaadf
