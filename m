X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/29/4
Message-ID: <CAE2SPAaRKQDosMwKpYr1txntDo4Ku1Ax0hjdzj_PoGL=Rjv_ww@mail.gmail.com>
Date: Wed, 29 Oct 2014 16:17:09 +0100
From: Bastien ROUCARIES <roucaries.bastien@...il.com>
To: oss-security@...ts.openwall.com
Subject: Request cve for imagemagick security problem (DOS)
Content-Type: text/plain; charset=utf-8

Hi,

I request a CVE indentifier for imagemagick.

Removing profile from jpg image create infinite loop with at least
6.8.9.6 version.

Version 6.7.7.10 is not affected.

Version 6.8.9.9 and more recent are fixed.

You could lead to do by doing convert test.jpg +profile '!icc,*' out.jpg

I could be exploited through imagick and thus maybe remotly exploitable.

Moreinformation https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=764872
and fix is
http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=26399#p116146

Thanks

Bastien
