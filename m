X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/27/3
Message-ID: <b703ec3c-504b-3273-6b4d-3526d07aa4c9@gmx.ch>
Date: Mon, 27 Aug 2018 21:10:55 +0200
From: sjw@....ch
To: oss-security@...ts.openwall.com
Subject: Another "user enumeration" in Dropbear
Content-Type: text/plain; charset=utf-8

Hi

Due the high interests in CVE-2018-15473 ("user enumeration" in
OpenSSH), people may also notice CVE-2018-15599 [1] in Dropbear (popular
on IoT/initramfs).
The issue seems to be very similar. A patch [2] is already available,
but no new releases so far.

Best regards

[1] http://lists.ucc.gu.uwa.edu.au/pipermail/dropbear/2018q3/002108.html
[2] https://secure.ucc.asn.au/hg/dropbear/rev/5d2d1021ca00



Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
