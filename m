X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/18/6
Message-ID: <20170518080707.635@usenet.piggo.com>
Date: Thu, 18 May 2017 06:10:57 +0000 (UTC)
From: Sébastien Delafond <seb@...ian.org>
To: oss-security@...ts.openwall.com
Subject: libytnef: CVE-2017-9058: heap-based buffer overflow in SIZECHECK (ytnef.c)
Content-Type: text/plain; charset=utf-8

Hello,

CVE-2017-9058 has been assigned for the following vulnerability:

  https://bugs.debian.org/862556

This was discovered by bingosxs@...com, and leads to a crash because of
an incorrect boundary check.

Cheers,

--Seb

