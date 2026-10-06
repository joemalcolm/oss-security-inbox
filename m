X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/9
Message-ID: <CAK4yqw6psW+nGfH-rSCVOUHUjhX6EuWdvY-Vr=EM2QZJj-krxg@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:47 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-12540: Foreman: command injection in foreman-rake errors:fetch_log (fixed in 3.19.2, 5.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Foreman, an open-source lifecycle
management tool for physical and virtual servers.

CVE-2026-12540: Foreman: command injection in foreman-rake errors:fetch_log

A user allowed to run the restricted `foreman-rake` log task can cause command
execution through its request identifier parameter. Unsafe shell handling can
compromise the Foreman server.

Affected versions: Foreman 2.2.0 through 3.19.1, and 5.0.0
CVSS: 8.2 (Important)
CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:H/I:H/A:H
Fixed versions: Foreman 3.19.2 and 5.0.1
Credit: Guilherme Suckevicz

References:
- Foreman Security: https://theforeman.org/security.html#2026-12540
- Redmine: https://projects.theforeman.org/issues/39838
- Fix: https://github.com/theforeman/foreman/pull/11310

Thanks,
Ondrej Gajdusek
Foreman Release Team

