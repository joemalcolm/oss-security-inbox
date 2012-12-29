X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/12/29/8
Message-ID: <50DF3694.7030409@larpwiki.de>
Date: Sat, 29 Dec 2012 19:29:40 +0100
From: Tilmann Haak <tilmann@...pwiki.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: MoinMoin Wiki (path traversal vulnerability)
Content-Type: text/plain; charset=utf-8

Hi all,

there is a path traversal issue in MoinMoin wiki (version 1.9.3 -
1.9.5). The vulnerability resides in the AttachFile action (function
_do_attachment_move in action/AttachFile.py). It fails to properly
sanitize file names.

Details can be found at: http://moinmo.in/SecurityFixes

A fix is available at: http://hg.moinmo.in/moin/1.9/rev/3c27131a3c52

Is it possible to get a CVE number for this one?

kind regards,
   Tilmann
