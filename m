X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/15/1
Message-ID: <CABBnxRbnOo12JO-n6ydrYROkXqU2cR-ifw7LQtuiWJy-NAQrwA@mail.gmail.com>
Date: Fri, 15 Jul 2016 08:12:10 +0800
From: Anonymous <ihunan@...il.com>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: Re: CVE Request: libgd: Out-Of-Bounds Read in function read_image_tga of gd_tga.c
Content-Type: text/plain; charset=utf-8

Fixed via https://github.com/libgd/libgd/commit/3c2b605d72e8b080dace1d98a6e50b46c1d12186
And cc cve-assign explicitly.

2016-07-12 15:08 Salvatore Bonaccorso <carnil@...ian org>:
> Hi
>
> Another issue was reported in the libgd issue tracker, an
> out-of-bounds reads in read_image_tga in gd_tga.c:
>
> https://github.com/libgd/libgd/issues/248
>
> Pull request: https://github.com/libgd/libgd/pull/251
>
> Upstream issue contains a reproducer for the issue and Ondřej Surý
> confirmed that this is not a duplicate of issue #247. Could you assign
> a CVE for this issue?
>
> Regards,
> Salvatore
