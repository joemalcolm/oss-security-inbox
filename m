X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/31/11
Message-ID: <CANTw=MN5m-Loy21JNrtcwz6rQNqnAYdi7U=zyb44q8J6WwXtpQ@mail.gmail.com>
Date: Wed, 31 Dec 2014 16:44:42 -0500
From: Michael Gilbert <mgilbert@...ian.org>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: cve request: miniunzip directory traversal
Content-Type: text/plain; charset=utf-8

Jakub Wilk discovered a directory traversal issue in the miniunzip
tool [0], which is part of minizip [1].  Attached is a proposed
solution.

Please assign a CVE id.

Best wishes,
Mike

[0] http://bugs.debian.org/774321
[1] http://www.winimage.com/zLibDll/minizip.html

View attachment "traversal.patch" of type "text/x-patch" (473 bytes)
