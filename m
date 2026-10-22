X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/13
Message-ID: <CAEHiSi=wrBz=UHt_9cs5u5DQNwgEz+TDwbQCfdP03hj7E9Wg5w@mail.gmail.com>
Date: Thu, 22 Oct 2026 17:39:15 +0800
From: 賴奇佑 <leon.lai@...ian.co.jp>
To: oss-security@...ts.openwall.com
Subject: Unofficial backports for CVE-2026-109618 / CVE-2026-109619 to EOL PHP 7.3 (EL7) and 5.4/5.3 (Amazon Linux)
Content-Type: text/plain; charset=utf-8

Hi,

For anyone still running PHP on platforms that will not receive a vendor
fix for CVE-2026-109618 / CVE-2026-109619 (unauthenticated RCE, CVSS 4.0
9.2), I have published source backports of the upstream minimal mitigation
(commit 712e60f9ed, "Avoid state corruption via bailout") for:

  - PHP 7.3.33 on CentOS/RHEL 7 (Remi php73 7.3.33-22)
  - PHP 5.4.16 on Amazon Linux 2 (php-5.4.16-46.amzn2.0.7)
  - PHP 5.3.29 on Amazon Linux 1 (php-5.3.29-1.8.amzn1)

https://github.com/leonlai-tw/php-eol-cve-2026-109618-109619

Patches and Docker-based build scripts only, no binaries. The scripts
verify the vendor SRPM signatures before patching. The 7.3 patch touches
the same 17 files as Sury's independent port in php7.3 7.3.33-35, and the
core changes are line-for-line identical.

Note for Debian/Ubuntu users of the Sury PPA: php7.3 7.3.33-35, php7.4
7.4.33-31, php8.0 8.0.30-25 and php8.1 8.1.34-9 already contain the fix,
although their changelogs do not mention the CVEs.

These are unofficial and come with no support commitment. Upgrading to a
supported PHP release remains the real fix.

Leon Lai

