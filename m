X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/12/5
Message-ID:  <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
Date: Wed, 12 Apr 2023 20:40:37 +0000
From: "Jonathan Bar Or (JBO)" <jobaror@...rosoft.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: ncurses fixes upstream
Content-Type: text/plain; charset=utf-8

Hello oss-security,

Our team has worked with the maintainer of the ncurses library (used by several software packages in Linux) to fix several memory corruption vulnerabilities.
They are now fixed at commit 20230408 - see details here (https://invisible-island.net/ncurses/NEWS.html#index-t20230408)
A CVE was assigned (CVE-2023-29491) - it's still under a "reserved" status.

How can we ensure those fixes get deployed upstream, in major Linux distributions?
We've reached out to Arch, RedHat, Canonical and other popular distros independently.

Thanks!
                             JBO


