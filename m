X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/30/2
Message-ID: <56FB9D8E.9070104@redhat.com>
Date: Wed, 30 Mar 2016 15:04:06 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Two flaws - libjpeg and libtiff
Content-Type: text/plain; charset=utf-8

Hi All,

We have made two security flaws public today. They were privately
reported to us by  Aladdin Mubaied. Details as follows:

1. null pointer dereference in libjpeg library in cjpeg
This is a flaw in the cjpeg utility available with the libjpeg library,
details available at:
https://bugzilla.redhat.com/show_bug.cgi?id=1318509

2. buffer-overflow in gif2tiff utility:
This is bundled with libtiff, details available at:
https://bugzilla.redhat.com/show_bug.cgi?id=1319503


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
