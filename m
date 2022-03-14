X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/03/14/2
Message-ID: <28650426-1002-ea94-54a5-71841b755b52@apache.org>
Date: Mon, 14 Mar 2022 10:07:40 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-22721: Apache HTTP Server: core: Possible buffer overflow with very large or unlimited LimitXMLRequestBody 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

If LimitXMLRequestBody is set to allow request bodies larger than 350MB (defaults to 1M) on 32 bit systems an integer overflow happens which later causes out of bounds writes.

This issue affects Apache HTTP Server 2.4.52 and earlier.

Credit:

Anonymous working with Trend Micro Zero Day Initiative

