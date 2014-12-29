X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/29/2
Message-ID: <54A0A770.6070105@mccme.ru>
Date: Mon, 29 Dec 2014 03:59:28 +0300
From: Alexander Cherepanov <cherepan@...me.ru>
To: oss-security@...ts.openwall.com
CC: cve-assign@...re.org
Subject: CVE request: dir traversal in elfutils
Content-Type: text/plain; charset=utf-8

Hi!

A dir traversal vuln is fixed in elfutils:

Initial (terse) report:
https://lists.fedorahosted.org/pipermail/elfutils-devel/2014-December/004499.html

Fix (with analysis in commit message):
https://git.fedorahosted.org/cgit/elfutils.git/commit/?id=147018e729e7c22eeabf15b82d26e4bf68a0d18e

At least versions 0.152 and 0.161 are affected.

Could CVE please be assigned?

-- 
Alexander Cherepanov
