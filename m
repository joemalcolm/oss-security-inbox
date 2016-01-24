X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/24/3
Message-ID: <20160124153737.GA18993@eldamar.local>
Date: Sun, 24 Jan 2016 16:37:37 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression
Content-Type: text/plain; charset=utf-8

Hi

Could you assign a CVE for the following issue in tiff:

http://bugzilla.maptools.org/show_bug.cgi?id=2522

> 2015-12-27  Even Rouault <even.rouault at spatialys.com>
> 
>         * libtiff/tif_luv.c: fix potential out-of-bound writes in decode
>         functions in non debug builds by replacing assert()s by regular if
>         checks (bugzilla #2522).
>         Fix potential out-of-bound reads in case of short input data.

Fixing commit:

https://github.com/vadz/libtiff/commit/aaab5c3c9d2a2c6984f23ccbc79702610439bc65

Regards,
Salvatore
