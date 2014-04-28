X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/28/1
Message-ID: <535DB698.9090502@redhat.com>
Date: Mon, 28 Apr 2014 12:02:00 +1000
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-0190: NULL pointer dereference in GIF image handler in QtGui
Content-Type: text/plain; charset=utf-8

Good morning,

CVE-2014-0190 describes a NULL pointer dereference flaw in the GIF image 
handler in QtGui. This could cause applications using that library to crash.

Upstream announcement and patches:

http://lists.qt-project.org/pipermail/announce/2014-April/000045.html

(CVE assigned by Red Hat.)

Cheers,

--
Murray McAllister / Red Hat Security Response Team
