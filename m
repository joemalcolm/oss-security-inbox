X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/20/5
Message-ID: <20090120184859.2ad20489@redhat.com>
Date: Tue, 20 Jan 2009 18:48:59 +0100
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: CVE request - horde XSS
Content-Type: text/plain; charset=utf-8

Hi!

It looks like IE-specific XSS issue was fixed in horde 3.2.3 and 3.3.1
(and few other hodre-based products) was fixed back in Dec, that
probably should have CVE id:

Release announcements:
http://lists.horde.org/archives/announce/2008/000462.html (3.2.3)
http://lists.horde.org/archives/announce/2008/000464.html (3.3.1)

Patch:
http://cvs.horde.org/diff.php/horde/docs/CHANGES?r1=1.515.2.413.2.1&r2=1.515.2.413.2.3&ty=h
http://cvs.horde.org/diff.php/framework/Text_Filter/Filter/xss.php?r1=1.17&r2=1.18

Test cases:
http://cvs.horde.org/diff.php/framework/Text_Filter/tests/xss.phpt?r1=1.1.2.3&r2=1.1.2.4
http://cvs.horde.org/framework/Text_Filter/tests/xss100.html

-- 
Tomas Hoger / Red Hat Security Response Team
