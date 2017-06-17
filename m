X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/17/3
Message-ID: <0b51611b-36c2-3dc6-2a69-b9b49fdd2700@redhat.com>
Date: Sat, 17 Jun 2017 11:40:34 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com, Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
Subject: Re: two vulns in uClibc-0.9.33.2
Content-Type: text/plain; charset=utf-8

On 06/17/2017 04:02 AM, Bob Friesenhahn wrote:
> Uclibc is a C library like GNU libc.  Why would a JS engine not use it?

Javascript has 16-bit strings, like Java, Windows, and some UNIX
variants.  GNU/Linux C libraries typically offer only 8-bit (multi-byte)
or 32-bit (wchar_t) strings, so they are a poor match.

Florian
