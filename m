X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/24/3
Message-ID: <150baa70-a243-0405-55e2-ee8525034fc4@apache.org>
Date: Fri, 24 Mar 2023 15:05:00 +0000
From: Marcus Lange <marcus@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-47502: Apache OpenOffice: Macro URL arbitrary script execution 
Content-Type: text/plain; charset=utf-8

Severity: critical

Description:

Apache OpenOffice documents can contain links that call internal macros with arbitrary arguments. Several URI Schemes are defined for this purpose.


Links can be activated by clicks, or by automatic document events.

The execution of such links must be subject to user approval.

In the affected versions of OpenOffice, approval for certain links is not   requested; when activated, such links could therefore result in arbitrary script execution.

Credit:

Altin Thartori (tin-z) (reporter)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-47502

