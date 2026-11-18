X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/6
Message-ID: <78bdb6a7-3de6-76e7-d17e-571a49b40afa@apache.org>
Date: Wed, 18 Nov 2026 11:07:35 +0000
From: Hubert Gruszecki <hgruszecki@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-132079: Apache Iggy Go SDK: Go TCP client creates personal access tokens that outlive the requested expiry 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Iggy Go SDK 0.5.0 before 0.10.0

Description:

Insufficient Session Expiration vulnerability in the Apache Iggy Go SDK. The TCP client method CreatePersonalAccessToken wrote the 32-bit expiry into the upper half of the 64-bit expiry field that the server reads. The server read a nonzero expiry as 2^32 times the requested value. A token created through the Go TCP client therefore stayed valid about four billion times longer than the caller asked for.

This issue affects Apache Iggy Go SDK: from 0.5.0 before 0.10.0.

Users are recommended to upgrade to version 0.10.0, which fixes the issue. Tokens that an earlier version created keep their long expiry on the server. Delete those tokens and create new ones.

Credit:

Goutam Adwant (finder)

References:

https://github.com/apache/iggy/pull/4615
https://iggy.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-132079

