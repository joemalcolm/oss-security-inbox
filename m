X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/05/28/1
Message-Id: <1243500490.3772.6.camel@localhost.localdomain>
Date: Thu, 28 May 2009 10:48:10 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
Cc: oss-security@...ts.openwall.com
Subject: CVE Request -- ImageMagick -- Integer overflow in XMakeImage()
Content-Type: text/plain; charset=utf-8

Hello Steve,

  latest version of ImageMagick fixes one integer overflow
in XMakeImage().

References:
http://secunia.com/advisories/35216/
http://www.imagemagick.org/script/changelog.php
http://trac.imagemagick.org/changeset/513/ImageMagick/trunk/magick/xwindow.c
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=530838

Vulnerable version: 6.5.2-8 and prior

Credit: Tielei Wang

Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

