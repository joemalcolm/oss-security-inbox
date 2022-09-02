X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/02/8
Message-ID: <e817b33e-48c3-bb1c-900c-65afc4e157df@apache.org>
Date: Fri, 2 Sep 2022 08:28:34 +0200
From: Jacques Le Roux <jleroux@...che.org>
To: oss-security@...ts.openwall.com
Subject: Apache OFBiz - Unauth Stored XSS (CVE-2022-25370)
Content-Type: text/plain; charset=utf-8

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 18.12.06

Description:
The Birt viewer version 4.5.0 has a security issue that allows this exploit.
We waited long for https://github.com/eclipse/birt/issues/625
to resolve but eventually decided to release OFBiz 18.12.06 without
the Birt component

Mitigation:
Upgrade to at least 18.12.06

Credit:
npodotykin@...ecurity.com

References:
http://ofbiz.apache.org/download.html#vulnerabilities

