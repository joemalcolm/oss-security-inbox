X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/10/19
Message-ID: <20170410150812.g3vijutg36dqafhf@eldamar.local>
Date: Mon, 10 Apr 2017 17:08:12 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: web2py: CVE-2016-10321: does not check if a host is denied before verifying passwords
Content-Type: text/plain; charset=utf-8

Hi

CVE-2016-10321 was assigned (via cveform.mitre.org) to the following
issue in web2py:

web2py before 2.14.6 does not properly check if a host is denied
before verifying passwords, allowing a remote attacker to perform
brute-force attacks.

Fixing commit:
https://github.com/web2py/web2py/commit/944d8bd8f3c5cf8ae296fc03d149056c65358426

Regards,
Salvatore
