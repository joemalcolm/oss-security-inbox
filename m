X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/06/06/3
Message-ID: <Pine.GSO.4.51.0906061221320.28142@faron.mitre.org>
Date: Sat, 6 Jun 2009 12:22:01 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com, oss-security@...ts.openwall.com
cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- ImageMagick -- Integer overflow in XMakeImage()
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2009-1882
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-1882
Reference: CONFIRM:http://imagemagick.org/script/changelog.php
Reference: CONFIRM:http://mirror1.smudge-it.co.uk/imagemagick/www/changelog.html
Reference: BID:35111
Reference: URL:http://www.securityfocus.com/bid/35111
Reference: OSVDB:54729
Reference: URL:http://osvdb.org/54729
Reference: SECUNIA:35216
Reference: URL:http://secunia.com/advisories/35216
Reference: VUPEN:ADV-2009-1449
Reference: URL:http://www.vupen.com/english/advisories/2009/1449

Integer overflow in the XMakeImage function in magick/xwindow.c in
ImageMagick 6.5.2-8 allows remote attackers to cause a denial of
service (crash) and possibly execute arbitrary code via a crafted TIFF
file, which triggers a buffer overflow.  NOTE: some of these details
are obtained from third party information.


