X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/03/18/4
Message-ID: <CAC1dCwU+88efiYG75neuPT3yaNEzWFjZxSoLEnV9PfB5yTyK4w@mail.gmail.com>
Date: Wed, 18 Mar 2020 12:03:23 -0400
From: Tim Allison <tallison@...che.org>
To: "<dev@...a.apache.org>" <dev@...a.apache.org>, user@...a.apache.org, announce@...che.org,  Apache Security Team <security@...che.org>, oss-security@...ts.openwall.com
Subject: [CVE-2020-1951] Infinite Loop (DoS) vulnerability in Apache Tika's PSDParser
Content-Type: text/plain; charset=utf-8

TItle: [CVE-2020-1951] Infinite Loop (DoS) vulnerability in Apache Tika's
PSDParser

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika  1.0 to 1.23

Description:
A carefully crafted or corrupt PSD file can cause an infinite loop in Apache
Tika's PSDParser in versions 1.0-1.23.


Mitigation:
Apache Tika users should upgrade to 1.24 or later.

Credit:
This issue was discovered by Tim Allison on the Apache Tika team.

