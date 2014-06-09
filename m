X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/09/3
Message-ID: <20140609111726.3c1ec2e4@redhat.com>
Date: Mon, 9 Jun 2014 11:17:26 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: OpenJDK CVE duplicates
Content-Type: text/plain; charset=utf-8

Hi!

CVE-2014-0462 and CVE-2014-2405 should be rejected as duplicates of
libjpeg CVE-2013-6629 and libpng CVE-2013-6954 respectively.  Those
were incorrectly used for known issues in the bundled library versions,
but replaced by previously assigned ids before updates announcements.
They were used briefly in the NEWS file though:

http://icedtea.classpath.org/hg/release/icedtea6-1.13/rev/72245beb1811

-- 
Tomas Hoger / Red Hat Security Response Team
