X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/05/1
Message-ID: <20170705081148.GH2102@pali>
Date: Wed, 5 Jul 2017 10:11:48 +0200
From: Pali Rohár <pali.rohar@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2017-10789: DBD::mysql - mysql_ssl=1 does not enforce encryption
Content-Type: text/plain; charset=utf-8

Hi! I would like to announce another problem in DBD::mysql which affects
only encryption between client and server. If you have fully trusted
connection then you should not be affected.

Perl DBD::mysql driver does not enforce SSL/TLS encryption when option
mysql_ssl=1 is enabled. Enabling encryption depends on announcement from
MySQL server what it supports which can man-in-the-middle attack spoof.
DBD::mysql does not enforce SSL/TSL encryption even when certificate is
specified via connection parameter mysql_ssl_ca_file.

Therefore usage of SSL/TLS encryption in DBD::mysql is insecure.

Similar problem had also libmysqlclient.so library, see CVE-2015-3152.

http://cve.mitre.org/cgi-bin/cvename.cgi?name=2017-10789

-- 
Pali Rohár
pali.rohar@...il.com
