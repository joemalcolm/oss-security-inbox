X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/25/2
Message-ID: <3197eee1-d6c3-1376-b83c-a14101703e63@redhat.com>
Date: Wed, 25 May 2016 12:29:04 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: 3 libxml2 issues
Content-Type: text/plain; charset=utf-8

Hi All,

The following issues were reported to us:

1. CVE-2016-4447: libxml2: Heap-based buffer underreads due to xmlParseName

https://bugzilla.redhat.com/show_bug.cgi?id=1338686

2. CVE-2016-4448 libxml2: Format string vulnerability

https://bugzilla.redhat.com/show_bug.cgi?id=1338700

3. CVE-2016-4449 libxml2: Inappropriate fetch of entities content

https://bugzilla.redhat.com/show_bug.cgi?id=1338701


Each of the Red Hat bugs , contain links to the commits which fix these
issues. (The upstream bugs are currently private)


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
