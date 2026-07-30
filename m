X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/29
Message-ID: <89c09c6f-963c-48fc-9204-dd852814f7ec@oracle.com>
Date: Thu, 30 Jul 2026 16:49:15 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: PHP 30 July 2026 security releases
Content-Type: text/plain; charset=utf-8

https://www.php.net/archive/2026.php#2026-07-30-5 announces the releases
of PHP 8.5.9, 8.4.24, 8.3.33, and 8.2.33, all of which are labeled
"This is a security release."

The changelogs for all four releases include:

* GD:
     Upgrade libgd. (CVE-2026-9672)

* PGSQL:
     Fixed https://github.com/php/php-src/security/advisories/GHSA-7qpv-r5mr-78m4
     (SQL injection via E'...' backslash breakout). (CVE-2026-17543)

* Phar:
     Fixed https://github.com/php/php-src/security/advisories/GHSA-vc5h-9ppw-p5f3
     (Crash via recursive symlinks). (CVE-2026-7260)

The changelogs for 8.4.24 & 8.5.9 also include:

* BCMath:
     Fixed https://github.com/php/php-src/security/advisories/GHSA-x692-q9x7-8c3f
     (Out-of-bounds write in bccomp()). (CVE-2026-17544)

