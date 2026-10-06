X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/1
Message-ID: <CAK4yqw5n-89PczFX+DckvX=RsbZxA8GsrSJGRZ5=rn348-0+Lw@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:15 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96659: Foreman: excessive Viewer permissions on preview (fixed in 3.19.2, 5.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Foreman, an open-source lifecycle
management tool for physical and virtual servers.

CVE-2026-96659: Foreman: excessive Viewer permissions on preview

The Viewer role can access data through template preview beyond intended
authorization boundaries. In configurations where Safemode is disabled or
bypassed, this can lead to code execution as the Foreman service account.

Affected versions: Foreman 1.9.0 through 3.19.1, and 5.0.0
CVSS: 9.1 (Important)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:L/A:L
Fixed versions: Foreman 3.19.2 and 5.0.1
Credit: Robb Gatica

References:
- Foreman Security: https://theforeman.org/security.html#2026-96659
- Redmine: https://projects.theforeman.org/issues/39846
- Fix: https://github.com/theforeman/foreman/pull/11310

Thanks,
Ondrej Gajdusek
Foreman Release Team

