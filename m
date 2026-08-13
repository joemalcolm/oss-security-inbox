X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/5
Message-ID: <752c6e12-50ff-d95c-d3bb-35d471ab631e@apache.org>
Date: Thu, 13 Aug 2026 08:52:34 +0000
From: Oleg Kalnichevski <olegk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64607: Apache HttpComponents Client: Connection Leak on Content-Encoding Decode Error Leads to Pool Exhaustion DoS 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache HttpComponents Client (org.apache.httpcomponents.client5:httpclient5) 5.0-alpha through 5.6.2

Description:

HttpClient based on the classic i/o model fails to correctly release the underlying connection back to the connection manager if it encounters an invalid or unsupported `Content-Encoding` header value in the response message. Please note this defect does not affect HttpClient based on the async i/o model.

This issue affects Apache HttpComponents Client: from 5.0-alpha1 through 5.6.2.

Credit:

Yu Bao from PayPal Cyber Security Team (finder)

References:

https://lists.apache.org/thread/qqfzo3fqcdk4l5496vz95ppvl4ty511q
https://hc.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-64607

