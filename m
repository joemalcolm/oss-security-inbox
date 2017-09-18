X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/09/18/4
Message-ID: <cf41fea5-4180-fb43-b990-bed8a8c0e31c@debian.org>
Date: Mon, 18 Sep 2017 13:18:46 -0400
From: Luciano Bello <luciano@...ian.org>
To: oss-security@...ts.openwall.com
Cc: team@...urity.debian.org, hosein.askari@....com
Subject: [CVE-2017-14266] tcprewrite Heap-Based Buffer Overflow
Content-Type: text/plain; charset=utf-8

Hi there,
     I'm trying to reproduce this, to check the affected versions
https://www.exploit-db.com/exploits/42652/
     I tried in Debian Sid (4.2.6-1) and Debian Stretch (3.4.4-3) and I
was not able to reproduce the issue. Specially for the later, the fact
that tcprewrite exists normally is puzzling. Hosein (the PoC author)
claims to make it work in 3.4.4 (on Ubuntu 16.04).

Can else somebody confirm this issue?

Thanks, luciano
