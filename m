X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/06/08/2
Message-ID: <20130608104445.GA3565@devzero.fr>
Date: Sat, 8 Jun 2013 12:44:45 +0200
From: vladz <vladz@...zero.fr>
To: oss-security@...ts.openwall.com
Subject: CVE request: Debian's package "mysql-server" leaks credential information
Content-Type: text/plain; charset=utf-8

Hi,

The file "/etc/mysql/debian.cnf", which contains plain text credentials
for the "debian-sys-maint" mysql user, is created in an insecure manner
during the package installation phase.  This can lead a non-privileged
local user to disclose its content and use this special account to
perform administration tasks.

  http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=711600

Could you allocate CVE id for this issue?

Thank you,
vladz.

