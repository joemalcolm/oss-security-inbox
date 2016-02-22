X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/22/5
Message-ID: <m1ziuspb5e.darpa@darpa.mil>
Date: Tue, 23 Feb 2016 06:39:57 +0700
From: Hans Jerry Illikainen <hji@...topia.com>
To: oss-security@...ts.openwall.com
Subject: php: stack overflow when decompressing tar archives
Content-Type: text/plain; charset=utf-8

Hi,

it seems that no CVE has been assigned this issue which may be of
interest to anybody shipping PHP older than 5.5.32, 5.6.18 or 7.0.3
without FORTIFY:

https://bugs.php.net/bug.php?id=71488

-- 
Hans Jerry Illikainen
