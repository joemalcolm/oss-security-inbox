X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/12/4
Message-Id: <201501121936.37902.thijs@debian.org>
Date: Mon, 12 Jan 2015 19:36:37 +0100
From: Thijs Kinkhorst <thijs@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: pigz, kgb, pax: directory traversal
Content-Type: text/plain; charset=utf-8

Hi,

Three additional cases of directory traversal in archiving utilities have been 
reported to Debian. Please assign a CVE id to each.

- pigz
  Report: https://bugs.debian.org/774978
  Fix: 
https://github.com/madler/pigz/commit/fdad1406b3ec809f4954ff7cdf9e99eb18c2458f

- kgb
  Report: https://bugs.debian.org/774989

- pax
  Report: https://bugs.debian.org/774716 and
      http://www.openwall.com/lists/oss-security/2015/01/07/5


Thanks,

Thijs Kinkhorst
Debian security team
