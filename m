X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/22/7
Message-ID: <5266C954.5030804@canonical.com>
Date: Tue, 22 Oct 2013 14:52:04 -0400
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: lightdm no longer confines guest profile with AppArmor
Content-Type: text/plain; charset=utf-8

Hello,

Christian Prim discovered that Light Display Manager 1.8.0 and later no longer
use the appropriate wrapper when launching guest sessions, resulting in the
session not being confined by AppArmor.

Bug report:
https://bugs.launchpad.net/lightdm/+bug/1243339

Could a CVE please be assigned to this issue?

Thanks,

Marc.

-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/
