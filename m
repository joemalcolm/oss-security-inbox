X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/30/6
Message-ID: <CACn5sdT2ie2cp7VShA-VqafyiMn-oDsv_0dGtXP-Xcf82LWihA@mail.gmail.com>
Date: Thu, 30 Jun 2016 15:42:24 +0200
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd
Content-Type: text/plain; charset=utf-8

Hi,

A read out-of-bands was found in the parsing of TGA files using the
last revision of libgd (a6a0e7f) but older versions can be affected. A
reproducer and some technical details are available here:

https://github.com/libgd/libgd/issues/247

Regards,
Gustavo.
