X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/03/7
Message-ID: <4F7B7A8C.2070507@mvista.com>
Date: Tue, 03 Apr 2012 12:32:44 -1000
From: akuster <akuster@...sta.com>
To: oss-security@...ts.openwall.com
Subject: fix to CVE-2009-4307
Content-Type: text/plain; charset=utf-8

Hello,

Was there a CVE assigned to commit d50f2ab6f050311dbf7b8f5501b25f0bf64a439b?

Commit 503358ae01b70ce6909d19dd01287093f6b6271c ("ext4: avoid divide by
zero when trying to mount a corrupted file system") fixes CVE-2009-4307
by performing a sanity check on s_log_groups_per_flex, since it can be
set to a bogus value by an attacker.

- Armin
