X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/12/14/1
Message-ID: <85f64f890912140858o24568210p70a95fe4ad28e701@mail.gmail.com>
Date: Mon, 14 Dec 2009 11:58:30 -0500
From: Anthon Pang <anthon.pang@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request - Open Flash Chart v2
Content-Type: text/plain; charset=utf-8

The Piwik project released an advisory re: the inclusion of
ofc_upload_image.php -- a potentially exploitable file from the
php-ofc-library offered by the Open Flash Chart project.

- http://piwik.org/blog/2009/10/piwik-response-to-secunia-advisory-sa37078/

Since Open Flash Chart is used by web sites and open source projects,
a common CVE makes sense.

Open Flash Chart:  Affected v2 Beta 1 through v2 Lug Wyrm Charmer.  Fixed: no
Piwki:  Affected: 0.2.35 through 0.4.3.  Fixed in 0.4.4.  (Removed file)
Open Web Analytics:  Affected: 1.2.  Fixed in svn.  (Removed file)

Other web sites/projects:
- http://www.google.com/search?q=php-ofc-library+ofc_upload_image.php+-piwik
- http://www.google.com/codesearch?q=ofc_upload_image.php
