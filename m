X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/10/17/2
Message-ID: <277A46CA87494176B1BBCF5D72624A2A@HAGGIS>
Date: Thu, 17 Oct 2019 00:46:17 +0200
From: "Jens Geyer" <jensg@...che.org>
To: <oss-security@...ts.openwall.com>, <security@...che.org>, "Thrift-Dev" <dev@...ift.apache.org>, <user@...ift.apache.org>
Subject: CVE-2019-0210: Apache Thrift: out-of-bounds read vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2019-0210: Apache Thrift out-of-bounds read vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Thrift 0.9.3 to 0.12.0

Description:
A server implemented in Go using TJSONProtocol or TSimpleJSONProtocol may panic when feed with invalid input data.

Mitigation:
Upgrade to version 0.13.0 

Credit:
This issue was reported by Alexandre Fiori of Facebook.

On behalf of the Apache Thrift PMC,
Jens Geyer

