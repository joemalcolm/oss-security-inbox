X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/25/4
Message-ID: <d1984fcc-d7cf-727e-1639-73e2a5501779@apache.org>
Date: Thu, 25 Jun 2026 02:22:26 +0000
From: Hulk Lin <hulk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46752: Apache Kvrocks: Stack buffer overflow in Lua bit.tohex() 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Kvrocks (apache/kvrocks) 2.0.4 through 2.15.0

Description:

Redis Lua HEAP overflow in cjson library vulnerability in Apache Kvrocks.

This issue affects Apache Kvrocks: from 2.0.4 through 2.15.0.

Users are recommended to upgrade to version 2.16.0, which fixes the issue.

Credit:

Jincheng Yang (reporter)

References:

https://kvrocks.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-46752

