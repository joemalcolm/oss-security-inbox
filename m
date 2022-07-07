X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/07/07/2
Message-ID: <780f3eb8-92fe-12c3-9e4f-d385ff6dd10d@apache.org>
Date: Thu, 07 Jul 2022 13:38:43 +0000
From: Abhishek Agarwal <abhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-44791: Apache Druid: Reflected XSS on certain HTTP endpoints 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

In Apache Druid 0.22.1 and earlier, certain specially-crafted links result in unescaped URL parameters being sent back in HTML responses. This makes it possible to execute reflected XSS attacks.

Mitigation:

Upgrade to Druid 0.23.0 or later.

Credit:

This issue was discovered by DangKhai from Viettel Cyber Security

