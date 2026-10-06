X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/10
Message-ID: <CAK4yqw43oGGoyk+4uCBA1BNqjzGzexVmDgy870nCTM9cZoAhxw@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:51 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-12423: Foreman: provisioning token validation flaw (fixed in 3.19.2, 5.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Foreman, an open-source lifecycle
management tool for physical and virtual servers.

CVE-2026-12423: Foreman: provisioning token validation flaw

An unauthenticated request can reach build-host provisioning through an IP/MAC
fallback when no valid provisioning token is supplied. The fallback is
reachable in token-enabled Red Hat-family provisioning configurations and can
expose provisioning data.

Affected versions: Foreman 1.1 through 3.19.1, and 5.0.0
CVSS: 7.5 (Important)
CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N
Fixed versions: Foreman 3.19.2 and 5.0.1
Credit: Guilherme Suckevicz

References:
- Foreman Security: https://theforeman.org/security.html#2026-12423
- Redmine: https://projects.theforeman.org/issues/39837
- Fix: https://github.com/theforeman/foreman/pull/11310

Thanks,
Ondrej Gajdusek
Foreman Release Team

