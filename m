X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/2
Message-ID: <CAK4yqw5rQZt_S1r77V+06KwQQqfuWj6LAfk95gs6-8XzrO9h3A@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:21 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96658: Foreman: Safemode bypass leading to RCE (fixed in 3.19.2, 5.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Foreman, an open-source lifecycle
management tool for physical and virtual servers.

CVE-2026-96658: Foreman: Safemode bypass leading to RCE

A low-privilege user permitted to render supplied template content can bypass
Foreman's Safemode restrictions and reach Ruby code execution with Foreman
service privileges.

Affected versions: Foreman releases bundling Safemode before 2.0.1,
including Foreman 3.19.0, 3.19.1, and 5.0.0
CVSS: 9.9 (Critical)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H
Fixed versions: Foreman 3.19.2 and 5.0.1; Safemode 2.0.1 or later must
be installed
Credit: Robb Gatica

References:
- Foreman Security: https://theforeman.org/security.html#2026-96658
- Redmine: https://projects.theforeman.org/issues/39845
- Fix: https://github.com/theforeman/safemode/pull/68
- Dependency update: https://github.com/theforeman/safemode/pull/69

Thanks,
Ondrej Gajdusek
Foreman Release Team

