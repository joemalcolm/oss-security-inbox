X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/22/1
Message-ID: <5447B40A.9030509@canonical.com>
Date: Wed, 22 Oct 2014 09:41:30 -0400
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: systemd-shim DoS issue
Content-Type: text/plain; charset=utf-8

Hello,

systemd-shim version 8 shipped with a debugging clause enabled that may result
in a denial of service attack by local users.

Fixed by:
https://github.com/desrt/systemd-shim/commit/d2e91c118f6128875274a638007702d1cc665893

Could a CVE please be assigned to this issue?

Thanks,

Marc.

-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/
