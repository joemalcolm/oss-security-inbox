X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/21
Message-ID: <7742c629-035d-7da6-bb72-d8c27f8e4680@apache.org>
Date: Tue, 03 Nov 2026 20:33:56 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59263: Apache OpenOffice: Carefully crafted documents could display different data when opened with different programs, instead of being reported as corrupt. 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 1.9 (low) CVSS:4.0/AV:L/AC:L/AT:N/PR:N/UI:P/VC:L/VI:N/VA:N/SC:L/SI:L/SA:N/E:P/S:P/AU:N/R:A/U:Green

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

A manipulated document opened in Apache OpenOffice 4.1.16 or earlier may allow substituted content to be displayed manipulating the user. Such documents are corrupt and should not be opened.
Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Yufan You from Tsinghua University (finder)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59263

