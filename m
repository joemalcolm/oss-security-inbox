X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/11/2
Message-ID: <AANLkTi=kQ8xkjqG=r8kjVesouTP9WLJaefAV8=1uweYK@mail.gmail.com>
Date: Thu, 11 Nov 2010 17:51:51 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: remote DoS in X.25
Content-Type: text/plain; charset=utf-8

A remote (or local) attacker communicating over X.25 could cause a
kernel panic by attempting to negotiate malformed facilities.  This is
a separate issue from CVE-2010-3873, which affects the same code path.

Reference:
http://marc.info/?l=linux-netdev&m=128951543005554&w=2
