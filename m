X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/9
Message-ID: <153f5c39-7ccf-419c-8182-bf157f3820b1@vanrees.org>
Date: Tue, 23 Jun 2026 21:08:28 +0200
From: Maurits van Rees <maurits@...rees.org>
To: oss-security@...ts.openwall.com
Subject: Plone: various security fixes 20260623
Content-Type: text/plain; charset=utf-8

On behalf of the Plone/Zope Security Team I announce several 
vulnerability fixes.

Remote Code Execution via TALES Injection:
CVE requested
https://github.com/plone/plone.app.portlets/security/advisories/GHSA-rr49-f9g6-c9r5
severity 9.9 critical

Denial of service via iCalendar import:
CVE-2026-55247
https://github.com/plone/plone.app.event/security/advisories/GHSA-r82h-mqw3-fc56
severity 9.1 critical

Denial of service via RSS feed portlet:
CVE-2026-55248
https://github.com/plone/plone.app.portlets/security/advisories/GHSA-x5g3-w747-2h8q
severity 9.1 critical

Denial of Service due to excessive title/description/filename length
CVE requested
severity 6.5 moderate. This has fixes in two packages, so two advisories:
https://github.com/plone/plone.app.dexterity/security/advisories/GHSA-5426-92w4-wvhv
https://github.com/plone/plone.app.contenttypes/security/advisories/GHSA-8pcw-h6w9-h46g

Those were announced today (June 23, 2026).

Two more were announced the past week:

Denial of Service in icalendar:
CVE-2026-55099
https://github.com/collective/icalendar/security/advisories/GHSA-cv84-9p8j-fj68
severity 7.5 high

Sandbox escape in RestrictedPython
CVE-2026-55830
https://github.com/zopefoundation/RestrictedPython/security/advisories/GHSA-ffg3-p8fm-mjx2
severity 8.3 high

And one more was announced on June 5:

Stored XSS by spoofing mime type
CVE-2026-54503
severity 4.3 moderate. This has fixes in two packages, so two advisories:
https://github.com/plone/plone.app.textfield/security/advisories/GHSA-4r4f-gg25-rmg5
https://github.com/plone/plone.restapi/security/advisories/GHSA-8rqh-vxpr-x77p

See the individual advisories for details.

For an overview of which package versions you should update to per 
supported Plone version (6.0, 6.1, 6.2), see these two posts:

https://community.plone.org/t/security-vulnerability-announcement-plone-app-textfield-and-plone-restapi/23050
https://community.plone.org/t/plone-security-fixes-20260623/23085

Full releases of Plone 6.1.5 and 6.2.1 are expected this week, and they 
will contain the fixed versions.

Thanks,

Maurits van Rees
Plone/Zope Security Team


