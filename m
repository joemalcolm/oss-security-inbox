X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/15/8
Message-ID: <CAFsGsxLyEzK1QqLwyRoFcqsbOWOUPJNeLAXfSaCEK7jO_+Py0A@mail.gmail.com>
Date: Thu, 15 May 2014 20:35:51 +0200
From: Marcin Owsiany <porridge@...ian.org>
To: oss-security@...ts.openwall.com
Subject: libgadu vulnerability: possible memory corruption
Content-Type: text/plain; charset=utf-8

I'd like to request a CVE ID for the following issue:

A crafted message from the file relay server may cause memory to
beoverwritten. The memory is not overwritten with data sent directly by the
server, but security implications cannot be ruled out.

The bug is public:
http://lists.ziew.org/pipermail/libgadu-devel/2014-May/001171.html
http://lists.ziew.org/pipermail/libgadu-devel/2014-May/001180.html

Marcin

