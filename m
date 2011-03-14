X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/14/13
Message-ID: <AANLkTin4JcpGaePPxs=knr29d5_C=syVCD86-_X+T=OH@mail.gmail.com>
Date: Mon, 14 Mar 2011 10:50:02 -0300
From: Felipe Pena <felipensp@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: format-string vulnerability in PHP Phar extension
Content-Type: text/plain; charset=utf-8

Hi,
I just found several format-string vulnerability in PHP Phar extension, a
bug has been filed in the PHP bugtracker (private):
http://bugs.php.net/bug.php?id=54247
On error several class methods passes the supplied argument to
zend_throw_exception_ex()
which prints a formatted error message using such value as the formatter
string.

$ sapi/cli/php ../bug.php "%08x.%08x.%08x.%08x.%08x"
PHP Fatal error: Uncaught exception 'PharException' with message 'unable to
open phar for reading "00000008.00000000.bf95c204.0963e050.00000014"' in
/home/felipe/dev/bug.php:4

Thanks.

-- 
Regards,
Felipe Pena

