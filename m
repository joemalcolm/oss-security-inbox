X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/08/18/11
Message-ID: <73591310.lZD5iXrPXu@willoughby>
Date: Thu, 18 Aug 2016 10:47:56 +0200
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: potrace: multiple crashes
Content-Type: text/plain; charset=utf-8

Hello,

the past year I discovered and documented multiple crashes in potrace:

https://blogs.gentoo.org/ago/2016/08/08/potrace-multiple-three-null-pointer-dereference-in-bm_readbody_bmp-bitmap_io-c/

https://blogs.gentoo.org/ago/2016/08/08/potrace-divide-by-zero-in-bm_new-bitmap-h/

https://blogs.gentoo.org/ago/2016/08/08/potrace-multiplesix-heap-based-buffer-overflow-in-bm_readbody_bmp-bitmap_io-c/

It could be obvious but each crash comes up from a different crafted 
image.


If you think that something is suitable for an identifier, please assign it.
Thanks

-- 
Agostino Sarubbo
Gentoo Linux Developer

