X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/31/3
Message-ID: <AANLkTikosdxx3yFKdV7t1FA3vqkRgA+Wbhsv1kyBE55J@mail.gmail.com>
Date: Fri, 31 Dec 2010 02:16:53 -0500
From: Anthon Pang <anthon.pang@...il.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request: CrawlTrack < 3.2.7 - remote php code execution
Content-Type: text/plain; charset=utf-8

Versions of CrawlTrack prior to 3.2.7 are, according to the vendor,
vulnerable to a remote PHP code execution attack if the stats pages
are public

Vendor changelog:  http://www.crawltrack.net/changelog.php

The attack vector isn't disclosed but a diff between 3.2.6 and 3.2.7
show the vendor's fix was to escape special characters (using
http://php.net/htmlspecialchars ) in values supplied through POST
variables.
