X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/15
Message-ID: <6334dbfc-b8a4-1154-f661-a169ef10b50e@apache.org>
Date: Fri, 24 Jul 2026 11:08:30 +0000
From: Szymon Janc <janc@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-45816: Apache NimBLE: NULL pointer dereference vulnerability in SMP LTK request 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache NimBLE through 1.9.0

Description:

NULL Pointer Dereference vulnerability in Apache NimBLE in LE Long Term Key Request event.

This requires disabled asserts (otherwise assert would trigger before NULL dereference) and bogus (or misbehaving) controller, thus severity is low.

This issue affects Apache NimBLE: through 1.9.0.

Users are recommended to upgrade to version 1.10.0, which fixes the issue.

Credit:

Chongqing Lei <leicq@....edu.cn> (reporter)

References:

https://github.com/apache/mynewt-nimble/commit/9448c5f495eb55018121b24a9dab5305c9222ea1
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-45816

