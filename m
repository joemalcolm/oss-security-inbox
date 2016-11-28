X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/28/2
Message-ID: <CABD0r11CUY3FvC0S+At_ApCKoEAGC2CLWQ_N0c1dzQ4VRgndQA@mail.gmail.com>
Date: Mon, 28 Nov 2016 22:49:58 +0100
From: Michiel Beijen <michiel.beijen@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2016-1251 - use after free in DBD::mysql when using prepared statements - medium
Content-Type: text/plain; charset=utf-8

DBD::mysql is the perl DBI driver for MySQL and the primary way Perl
applications and scripts access MySQL and MariaDB databases. The
source repository is at https://github.com/perl5-dbi/DBD-mysql.

A vulnerability was discovered that can lead to a use after free when
using prepared statements. This vulnerability is present in all
releases at least back to versions 3.0 of the driver, which were
released in 2005.

The CVE identifier for this vulnerability is CVE-2016-1251.

Version 4.041, including the fix for this vulnerability, is available
on CPAN at https://metacpan.org/pod/DBD::mysql

The fix itself is available at
https://github.com/perl5-dbi/DBD-mysql/commit/3619c170461a3107a258d1fd2d00ed4832adb1b1

Users of DBD::mysql using prepared statements are advised to patch
their installations as soon as possible. Distributors of DBD::mysql
are requested to make this fix available to their end users.

Many thanks to Pali Rohár for discovering and fixing the vulnerability.

--
The DBD::mysql maintainers,

Patrick Galbraith
Michiel Beijen
