X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/27/3
Message-ID: <60bcff1f-fa22-502f-8b1e-95a662a52f0d@yandex.ru>
Date: Fri, 27 Jan 2017 10:51:09 +0300
From: Luc Lynx <luc.lynx@...dex.ru>
To: oss-security@...ts.openwall.com
Subject: SSRF issue in the svgsalamander library
Content-Type: text/plain; charset=utf-8

Hello,

There is a java library for processing svg files called svgSalamander:

https://github.com/blackears/svgSalamander

It can also be found in maven:

http://search.maven.org/#search%7Cga%7C1%7Csvg-salamander

If the library is used in a web application, SSRF isssue is possible. I
created a ticket on github:
https://github.com/blackears/svgSalamander/issues/11

The issue seems to be in all versions of the library.

--
LL
