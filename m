X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/02/06/4
Message-ID: <CAEvdU_13o38HpfCWUE1hLt-k=fotsULFr-AGHq8CT0+FCMrzoA@mail.gmail.com>
Date: Thu, 6 Feb 2020 15:25:27 +0100
From: Jacopo Cappellato <jacopoc@...che.org>
To: oss-security@...ts.openwall.com
Subject: [SECURITY] CVE-2019-12426 information disclosure vulnerability in Apache OFBiz
Content-Type: text/plain; charset=utf-8

Severity:
Minor

Vendor:
The Apache Software Foundation

Versions Affected:
Apache OFBiz 16.11.01 to 16.11.06

Description:
an unauthenticated user could get access to information of some backend
screens by invoking setSessionLocale.

Mitigation:
Upgrade to 16.11.07

Credit:
This issue was discovered by ﻿Dennis Balkir <dennis.balkir@...mify.de>.

References:
http://ofbiz.apache.org/security.html

