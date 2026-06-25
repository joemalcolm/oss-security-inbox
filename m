X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/25/3
Message-ID: <b6c26902-58c8-0afe-0926-1fad5fabd44b@apache.org>
Date: Thu, 25 Jun 2026 02:21:08 +0000
From: Hulk Lin <hulk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46751: Apache Kvrocks: Does not remove the unsafe loadstring function from its Lua sandbox, allowing a user who can run EVAL scripts to load crafted, unvalidated bytecode that crashes the server process, resulting in a remote denial of service. 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Kvrocks (apache/kvrocks) 2.2.0 through 2.15.0

Description:

A vulnerability in Apache Kvrocks.

This issue affects Apache Kvrocks: from 2.2.0 through 2.15.0.

Users are recommended to upgrade to version 2.16.0, which fixes the issue.

Credit:

4ra2n (A code security AI agent) (finder)

References:

https://kvrocks.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-46751

