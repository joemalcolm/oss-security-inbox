X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/4
Message-ID: <CAK4yqw5=HBi0=RfKoj6Zg3eXr+i7+yVPXNy0Ao5=0an_i-0-Zg@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:27 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56097: Katello: SQL injection in Registry Proxy labels (fixed in 4.21.2, 5.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Katello, a content management plugin for
Foreman.

CVE-2026-56097: Katello: SQL injection in Registry Proxy labels

An authenticated low-privilege user can inject SQL through Katello Registry
Proxy label parameters because input is interpolated into database queries
without sufficient sanitization. This can expose data across authorization
boundaries.

Affected versions: Katello 4.13.0 through 4.21.1.1, and 5.0.0
CVSS: 6.5 (Moderate)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N
Fixed versions: Katello 4.21.2 and 5.0.1
Credit: Guilherme Suckevicz

References:
- Foreman Security: https://theforeman.org/security.html#2026-56097
- Redmine: https://projects.theforeman.org/issues/39843
- Fix: https://github.com/Katello/katello/pull/11887

Thanks,
Ondrej Gajdusek
Foreman Release Team

