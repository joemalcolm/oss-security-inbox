X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/3
Message-ID: <CAK4yqw42RZA78hyaznt9=LNq1S2nD8DUwkET_56XpBSjZjD_Wg@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:25 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56098: Katello: Registry Proxy authorization bypass (fixed in 4.21.2, 5.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Katello, a content management plugin for
Foreman.

CVE-2026-56098: Katello: Registry Proxy authorization bypass

An authenticated low-privilege user can bypass Registry Proxy authorization
checks and enumerate organizations and products through response differences.

Affected versions: Katello 4.13.0 through 4.21.1.1, and 5.0.0
CVSS: 4.3 (Moderate)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N
Fixed versions: Katello 4.21.2 and 5.0.1
Credit: Guilherme Suckevicz

References:
- Foreman Security: https://theforeman.org/security.html#2026-56098
- Redmine: https://projects.theforeman.org/issues/39844
- Fix: https://github.com/Katello/katello/pull/11887

Thanks,
Ondrej Gajdusek
Foreman Release Team

