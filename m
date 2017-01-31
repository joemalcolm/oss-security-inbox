X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/31/1
Message-ID: <CAN6_dU-+NxBLRrn4_W4myHh0hEBsC-dh=DrSkt_mDfd6fAC2_w@mail.gmail.com>
Date: Tue, 31 Jan 2017 12:58:41 +0800
From: chunibalon <chunibalon@...il.com>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.com
Subject: CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)
Content-Type: text/plain; charset=utf-8

Hi:

        These issues were discovered via libtiff 4.0.7, however after
upstream analysis they were found that they are in netpbm(10.47.63)
       The url of bug tracker:
        http://bugzilla.maptools.org/show_bug.cgi?id=2654
        http://bugzilla.maptools.org/show_bug.cgi?id=2655
        Then I mailed the maintainer of netpbm and he promised fix them in
the next Netpbm Super Stable release (the release series I tested) at the
end of March.
       Could you please assign CVE id's for those?
Best Regards,
chunibalon of VARAS@IIE

