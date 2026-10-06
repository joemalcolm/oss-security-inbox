X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/5
Message-ID: <CAK4yqw78S76Oij0Wguf=oaNJQrx0V781kL6+unK-k_2sSwGTAw@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:32 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-12545: Hammer CLI: editor command injection (fixed in 3.19.1, 5.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Hammer CLI, a command-line interface for
Foreman.

CVE-2026-12545: Hammer CLI: editor command injection

A local attacker who can influence Hammer CLI's editor configuration can cause
commands to execute when a user invokes the affected editor flow. If Hammer CLI
runs with elevated privileges, this can result in privilege escalation.

Affected versions: Hammer CLI 0.15.1 through 3.19.0, and 5.0.0
CVSS: 6.7 (Moderate)
CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:H/A:H
Fixed versions: Hammer CLI 3.19.1 and 5.0.1
Credit: Guilherme Suckevicz

References:
- Foreman Security: https://theforeman.org/security.html#2026-12545
- Redmine: https://projects.theforeman.org/issues/39842
- Fix: https://github.com/theforeman/hammer-cli/pull/407

Thanks,
Ondrej Gajdusek
Foreman Release Team

