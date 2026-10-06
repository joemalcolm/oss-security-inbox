X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/7
Message-ID: <CAK4yqw4NxRHiRgNJy9pne-RUmQAU5HHOqM8tpovjkJuE7t68Bg@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:38 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-12542: Foreman: command injection in foreman-tail (fixed in 3.19.2, 5.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Foreman, an open-source lifecycle
management tool for physical and virtual servers.

CVE-2026-12542: Foreman: command injection in foreman-tail

A local user with access to `foreman-tail` can inject commands because user
input is evaluated unsafely. Successful exploitation allows arbitrary command
execution on the Foreman server.

Affected versions: Foreman 1.5.0 through 3.19.1, and 5.0.0
CVSS: 5.3 (Moderate)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:L
Fixed versions: Foreman 3.19.2 and 5.0.1
Credit: Guilherme Suckevicz

References:
- Foreman Security: https://theforeman.org/security.html#2026-12542
- Redmine: https://projects.theforeman.org/issues/39840
- Fix: https://github.com/theforeman/foreman/pull/11310

Thanks,
Ondrej Gajdusek
Foreman Release Team

