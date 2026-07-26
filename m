X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/26/1
Message-ID: <CACiSN6XyBuXGHodaWDRQ_qOPucB9Lj4jTV_XUyVYPmii9vb-jA@mail.gmail.com>
Date: Sun, 26 Jul 2026 10:31:43 -0600
From: Mark Rose <markrose@...krose.ca>
To: debian-hams@...ts.debian.org, svxlink-maintainers@...oraproject.org,  tomjbe@...too.org, oss-security@...ts.openwall.com, anonfunc@...hlinux.org,  secalert@...hat.com, security@...e.de, security@...ntu.com,  security@...too.org, hamradio@...ebsd.org, secteam@...ebsd.org
Subject: [security] critical vulnerabilities patched in svxlink (RCE)
Content-Type: text/plain; charset=utf-8

Hello,

A new version of svxlink has been released that fixes many
vulnerabilities. The worst has a CVSS/3.1 score of 9.8.

https://github.com/sm0svx/svxlink/security/advisories

The version containing the fixes is 26.05.1.

All prior versions from at least the past 13 years are vulnerable to
remote code execution. All maintained packages for older versions will
require backports.

Regards,
Mark Rose
