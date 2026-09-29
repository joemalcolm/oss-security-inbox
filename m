X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/18
Message-ID: <aru6MwcXY0NMwMey@netmeister.org>
Date: Tue, 29 Sep 2026 09:16:35 -0400
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: "several" CVEs in latest Debian linux security advisory DSA 6528-1
Content-Type: text/plain; charset=utf-8

Hi,

https://lists.debian.org/debian-security-announce/2026/msg00441.html
notes that:

"Several vulnerabilities have been discovered in the
Linux kernel that may lead to a privilege escalation,
denial of service or information leaks."

Where "several" is a list of 1,313 CVE IDs.

I understand that this is a result of the Linux kernel
team assigning a CVE ID for virtually any change
combined with the onslaught of AI assisted findings,
but I think a security advisory of this sort serves no
meaningful purpose and illustrates the argument that
it's pointless for defenders to attempt to track and
assess individual vulnerabilities.

At the same time, automatically and frequently pulling
and applying all updates without scrutiny isn't really
an option for large scale, multi-purpose environments
either -- many of the vulnerabilities will not apply
to them at all, and the churn may introduce other
problems.

The only reasonable approach I see is to hunker down,
do all the basics that should have been done before
(disable unused modules, don't use containers as a
reliable security boundary, reduce attack surface,
...), but at this point I've come to believe that
multi-user linux systems may effectively no longer be
viable, as a LPE ought to be assumed.

I don't know how everybody else approaches this shift.

-Jan
