X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/28/3
Message-ID: <ae91bb8a-9155-6c71-ea73-20df3905202d@apache.org>
Date: Thu, 28 Dec 2023 20:30:33 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-47804: Apache OpenOffice: Macro URL arbitrary script execution 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache OpenOffice through 4.1.15

Description:

Apache OpenOffice documents can contain links that call internal macros with arbitrary arguments. Several URI Schemes are defined for this purpose.

Links can be activated by clicks, or by automatic document events.

The execution of such links must be subject to user approval.

In the affected versions of OpenOffice, approval for certain links is not requested; when activated, such links could therefore result in arbitrary script execution.

This is a corner case of CVE-2022-47502.

Credit:

Amel BOUZIANE-LEBLOND aka Icare Bug Bounty Hunter (reporter)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-47804

