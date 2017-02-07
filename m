X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/07/5
Message-ID: <20170207104854.331@usenet.piggo.com>
Date: Tue, 7 Feb 2017 09:57:39 +0000 (UTC)
From: Sébastien Delafond <seb@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: XXE in Openpyxl
Content-Type: text/plain; charset=utf-8

Hello,

the Debian Security Team would like to request a CVE for an XML XEE
discovered in Openpyxl by Marcin Ulikowski from F-Secure; Openpyxl
resolves external entities by default:

  https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=854442
  https://bitbucket.org/openpyxl/openpyxl/commits/3b4905f428e1

Cheers,

--Seb

