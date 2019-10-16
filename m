X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/10/17/1
Message-ID:  <VI1PR0101MB2142E0EA19F582429C3AEBCBB1920@VI1PR0101MB2142.eurprd01.prod.exchangelabs.com>
Date: Wed, 16 Oct 2019 22:46:15 +0000
From: Jens Geyer <jensgeyer@...mail.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>, "security@...che.org" <security@...che.org>, Thrift-Dev <dev@...ift.apache.org>, "user@...ift.apache.org" <user@...ift.apache.org>
Subject: CVE-2019-0205: Apache Thrift: potential DoS when processing untrusted Thrift payload
Content-Type: text/plain; charset=utf-8

CVE-2019-0205: potential DoS when processing untrusted Thrift payloads

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Thrift up to and including 0.12.0

Description:
A server or client may run into an endless loop when feed with specific input data.

Because the issue had already been partially fixed by THRIFT-4024 in version 0.11.0, depending on the installed version it affects only certain language bindings.

Mitigation:
Upgrade to version 0.13.0

Credit:
This issue was discovered by Hasnain Lakhani of Facebook.

On behalf of the Apache Thrift PMC,
Jens Geyer

