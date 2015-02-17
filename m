X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/17/1
Message-ID: <20150217113252.GA9764@mail.corp.redhat.com>
Date: Tue, 17 Feb 2015 12:32:52 +0100
From: Vasyl Kaigorodov <vkaigoro@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: novnc: session hijack through insecurely set session token cookies
Content-Type: text/plain; charset=utf-8

Hello,

Paul McMillan reported that noVNC prior to this patch:
https://github.com/kanaka/noVNC/commit/ad941faddead705cd611921730054767a0b32dcd
allows an attacker to steal insecurely set session token cookies, hijacking active or inactive VNC sessions.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=1193451

Can a CVE be assigned to this please?

Thanks.
-- 
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828

Content of type "application/pgp-signature" skipped
