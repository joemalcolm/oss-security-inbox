X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/24/4
Message-ID: <20160124153743.GA19655@eldamar.local>
Date: Sun, 24 Jan 2016 16:37:43 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE Request: tiff: potential out-of-bound write in NeXTDecode()
Content-Type: text/plain; charset=utf-8

Hi

Could you assign a CVE for the following issue in tiff:

http://bugzilla.maptools.org/show_bug.cgi?id=2508

> 2015-12-27  Even Rouault <even.rouault at spatialys.com>
> 
>         * libtiff/tif_next.c: fix potential out-of-bound write in NeXTDecode()
>         triggered by http://lcamtuf.coredump.cx/afl/vulns/libtiff5.tif
>         (bugzilla #2508)

Fixing commit:

https://github.com/vadz/libtiff/commit/b18012dae552f85dcc5c57d3bf4e997a15b1cc1c

Regards,
Salvatore
