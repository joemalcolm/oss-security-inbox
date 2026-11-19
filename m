X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/19/10
Message-ID:  <MA9PR08MB78625415E68AF380D88E3A8B91D2792@MA9PR08MB786254.eurprd08.prod.outlook.com>
Date: Thu, 19 Nov 2026 15:21:39 +0000
From: Jo Goossens <jo.goossens@...ted-power.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: CVE-2026-123633, CVE-2026-123007: nginx RCE via HTTP/2
Content-Type: text/plain; charset=utf-8

Distribution status as of 19 Nov: Debian fixed trixie (DSA-6642-1,
1.26.3-3+deb13u11); bookworm is still vulnerable. Red Hat lists RHEL 8
(nginx:1.24), RHEL 9 (default, 1.24, 1.26) and RHEL 10 as affected;
AlmaLinux has shipped fixes (ALSA-2026-A024/A025). CentOS 7/8 and Debian
8-11 receive no updates.

For those, unofficial backports of the distributions' own packages are
available at https://github.com/HOSTED-POWER/nginx2root-patches
(disclosure: my company).

--
Jo Goossens
Hosted Power
