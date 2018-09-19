X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/09/19/6
Message-ID: <CAC1dCwVOEYsB1c4s2DYkhsafT8q3Fupt_OFugXj9J1RCZuf3UQ@mail.gmail.com>
Date: Wed, 19 Sep 2018 08:49:50 -0400
From: Tim Allison <tallison@...che.org>
To: announce@...che.org, dev@...a.apache.org, user@...a.apache.org,  Apache Security Team <security@...che.org>, oss-security@...ts.openwall.com
Subject: [CVE-2018-8017] Apache Tika Denial of Service Vulnerability -- Potential Infinite Loop in IptcAnpaParser
Content-Type: text/plain; charset=utf-8

CVE-2018-8017: Apache Tika Denial of Service Vulnerability --
Potential Infinite Loop in IptcAnpaParser

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Tika 1.2 to 1.18

Description:
A carefully crafted file can trigger an infinite loop in Apache Tika's
IptcAnpaParser.

Mitigation:
Apache Tika users should upgrade to 1.19 or later.

Credit:
This issue was discovered by Tobias Ospelt of modzero AG.
