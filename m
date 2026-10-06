X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/6
Message-ID: <CAK4yqw63WPVjnRYMF9stbrfSvq8pSU_Ou+n7Lakrtti--GrjhQ@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:34 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-12544: Foreman: SSTI and unsafe deserialization in configuration (fixed in 3.19.2, 5.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Foreman, an open-source lifecycle
management tool for physical and virtual servers.

CVE-2026-12544: Foreman: SSTI and unsafe deserialization in configuration

An attacker who can influence Foreman configuration can trigger server-side
template evaluation or unsafe deserialization during `foreman-rake` startup,
leading to code execution in a privileged service context.

Affected versions: Foreman 1.0 through 3.19.1, and 5.0.0; the ERB
execution path starts at 1.15.0
CVSS: 7.7 (Important)
CVSS:3.1/AV:L/AC:L/PR:H/UI:R/S:C/C:H/I:H/A:H
Fixed versions: Foreman 3.19.2 and 5.0.1
Credit: Guilherme Suckevicz

References:
- Foreman Security: https://theforeman.org/security.html#2026-12544
- Redmine: https://projects.theforeman.org/issues/39841
- Fix: https://github.com/theforeman/foreman/pull/11310

Thanks,
Ondrej Gajdusek
Foreman Release Team

