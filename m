X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/17
Message-ID: <2a26dd0c-91e0-4e8b-84be-7562f769598e@oracle.com>
Date: Wed, 18 Nov 2026 13:05:59 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: fontconfig 2.18.4 released with security fix
Content-Type: text/plain; charset=utf-8

I don't see a CVE id assigned for it yet, but
https://gitlab.freedesktop.org/fontconfig/fontconfig/-/releases/2.18.4
identifies the included security fix as:

Fix out-of-bounds access in FcCharSetMerge when merging page 0xffff
https://gitlab.freedesktop.org/fontconfig/fontconfig/-/commit/16aa5c1a372093045ad02736b0ab99e3cfd94f32

which fixes the bug reported as:
https://gitlab.freedesktop.org/fontconfig/fontconfig/-/work_items/577

-------- Forwarded Message --------
Subject: 	2.18.4 released
Date: 	Wed, 18 Nov 2026 21:57:24 +0900
From: 	Akira TAGOH <akira@...oh.org>
To: 	fontconfig@...ts.freedesktop.org

Hi,

2.18.4 has been released with some bug fixes and a security fix.
Please check out
https://gitlab.freedesktop.org/fontconfig/fontconfig/-/releases/2.18.4
for more details and the download link.

If there are any issues you found in this release, please submit an
issue to https://gitlab.freedesktop.org/fontconfig/fontconfig/-/work_items/new

Regards,
-- 
Akira TAGOH

