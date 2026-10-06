X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/11
Message-ID: <CAK4yqw6ZCoGkZASSZAzTZZFCefCLQO7Air=gwhH+2X4rQJoDhA@mail.gmail.com>
Date: Tue, 6 Oct 2026 18:31:53 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-12405: Foreman Remote Execution: command injection via effective_user (fixed in 16.6.6, 17.2.2, 18.0.1)
Content-Type: text/plain; charset=utf-8

Hi,

A security fix has been released in Foreman Remote Execution, an open-source
plugin for Foreman, an open-source lifecycle management tool for physical and
virtual servers.

CVE-2026-12405: Foreman Remote Execution: command injection via effective_user

An authenticated user with permission to execute job templates can inject
commands through the overridable `effective_user` parameter during job
invocation. Improper input handling allows command execution with the
execution user's privileges on managed hosts.

Affected versions: Foreman Remote Execution 0.1.2–16.6.5, 16.7.0,
17.0.0–17.2.1, and 18.0.0
CVSS: 8.8 (Important)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
Fixed versions: Foreman Remote Execution 16.6.6, 17.2.2, and 18.0.1
Credit: Guilherme Suckevicz

References:
- Foreman Security: https://theforeman.org/security.html#2026-12405
- Redmine: https://projects.theforeman.org/issues/39836
- Fix: https://github.com/theforeman/foreman_remote_execution/pull/1072

Thanks,
Ondrej Gajdusek
Foreman Release Team

