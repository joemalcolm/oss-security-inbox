X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/03/18/3
Message-ID: <CAC1dCwX+=L_m_da_kANnvcO1HyvsPdy5E4XhiXc2t0WqWwVSbw@mail.gmail.com>
Date: Wed, 18 Mar 2020 12:01:41 -0400
From: Tim Allison <tallison@...che.org>
To: user@...a.apache.org, "<dev@...a.apache.org>" <dev@...a.apache.org>,  Apache Security Team <security@...che.org>, announce@...che.org, oss-security@...ts.openwall.com
Subject: [CVE-2020-1950] Excessive memory usage (DoS) vulnerability in Apache Tika's PSDParser
Content-Type: text/plain; charset=utf-8

Title: [CVE-2020-1950] Excessive memory usage (DoS) vulnerability in Apache
Tika's PSDParser

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache Tika  1.0 to 1.23

Description:
A carefully crafted or corrupt PSD file can cause excessive memory usage in
Apache
Tika's PSDParser in versions 1.0-1.23.


Mitigation:
Apache Tika users should upgrade to 1.24 or later.


Credit:
This issue was discovered by Pierre Ernst at Elastic.

