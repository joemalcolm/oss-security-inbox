X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/26/1
Message-ID: <91964f83-1a4f-ad0b-7b06-0a29f87a6003@apache.org>
Date: Thu, 26 Nov 2026 00:24:44 +0000
From: Hongtao Gao <hanahmily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86470: Apache SkyWalking BanyanDB: PropertyService.Query accepts a client-controlled limit without an upper bound. 
Content-Type: text/plain; charset=utf-8

Severity: high 

Affected versions:

- Apache SkyWalking BanyanDB 0.11.0 before 0.11.1

Description:

Allocation of resources without limits or throttling vulnerability in Apache SkyWalking BanyanDB.



Uncontrolled resource consumption in Apache SkyWalking BanyanDB's query API allows a remote unauthenticated attacker to cause the server to exhaust memory and terminate. A query request can specify an arbitrarily large result limit and offset, which the server uses to pre-allocate result buffers without an upper bound; a single request may force an allocation of tens of gigabytes and cause the process to be killed



This issue affects Apache SkyWalking BanyanDB: from 0.11.0 before 0.11.1.



Users are recommended to upgrade to version 0.11.1, which fixes the issue.

Credit:

Bibek Jyoti Charah (reporter)

References:

https://skywalking.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86470

