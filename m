X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/19/4
Message-ID: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
Date: Wed, 20 Jun 2018 00:48:55 +0400
From: Loganaden Velvindron <loganaden@...il.com>
To: oss-security@...ts.openwall.com
Cc: secure@...el.com
Subject: Intel hyper-threading security issues
Content-Type: text/plain; charset=utf-8

Hi all,

OpenBSD has gone ahead and disabled Intel Hyper threading with a
fairly detailed comment about the reasons behind:

https://www.mail-archive.com/source-changes@openbsd.org/msg99141.html

As far as I can tell:
-cache timing attacks are possible, and spectre-like problems are an
issue again.
-OSes will need to modify their schedulers to avoid scheduling domains
in a dangerous way.

When will the details be published so that OpenBSD users who buy Intel
hardware can get more fined grained solutions against specific attack
vectors ? Is it also scheduled for the 27th ?


Kind regards,
//Logan
C-x-C-c
