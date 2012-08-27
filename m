X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/27/2
Message-ID: <503B1173.7050009@redhat.com>
Date: Mon, 27 Aug 2012 11:49:31 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: Heap-based buffer overflow in openjpeg
Content-Type: text/plain; charset=utf-8

Hi Folks,

I discovered a heap-based buffer-overflow in openjpeg, when decoding
JPEG200 images. More details at:

https://bugzilla.redhat.com/show_bug.cgi?id=842918
http://code.google.com/p/openjpeg/issues/detail?id=170

This seems to affect versions 1.3 , upto the latest release
version.

Upstream is currently working on the fix.

Can a CVE id be please assigned to this flaw?


-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
