X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/04/06/2
Message-ID: <CAEhjM2Bg-NDaUP6-LUM_+a7Q-3MzuZgni0HC4k3eA0oYU-8q4g@mail.gmail.com>
Date: Wed, 6 Apr 2022 12:58:18 -0400
From: Nathan Gough <thenatog@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-26850: Apache NiFi: Insufficiently protected credentials
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

When creating or updating credentials for single-user access, NiFi
wrote a copy of the Login Identity Providers configuration to the
operating system temporary directory. On most platforms, the operating
system temporary directory has global read permissions. NiFi
immediately moved the temporary file to the final configuration
directory, which significantly limited the window of opportunity for
access.

This issue is being tracked as NIFI-9785

Mitigation:

NiFi 1.16.0 includes updates to replace the Login Identity Providers
configuration without writing a file to the operating system temporary
directory.

Credit:

This issue was discovered by Jonathan Leitschuh
(https://twitter.com/jlleitschuh)

References:
https://nifi.apache.org/security.html#CVE-2022-26850

