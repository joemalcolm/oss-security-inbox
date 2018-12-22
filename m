X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/12/22/2
Message-ID: <CAC1dCwWhYmbkxAvFKgGSFd_ffp5EeCimB2gBXTo+9-F7v6TSNQ@mail.gmail.com>
Date: Sat, 22 Dec 2018 10:28:14 -0500
From: Tim Allison <tallison@...che.org>
To: announce@...che.org, dev@...a.apache.org, user@...a.apache.org,  Apache Security Team <security@...che.org>, oss-security@...ts.openwall.com
Subject: [CVE-2018-17197] Apache Tika Denial of Service -- Infinite Loop in Tika's SQLite3Parser
Content-Type: text/plain; charset=utf-8

[CVE-2018-17197] Apache Tika Denial of Service -- Infinite Loop in
Tika's SQLite3Parser

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika 1.8 to 1.19.1

Description:
A carefully crafted or corrupt sqlite file can cause an infinite loop
in Apache Tika's SQLite3Parser in versions 1.8-1.19.1 of Apache Tika.


Mitigation:
Apache Tika users should upgrade to 1.20 or later.


Credit:
This issue was discovered by Tim Allison on the Apache Tika Team.
