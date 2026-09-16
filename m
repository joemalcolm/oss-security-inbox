X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/13
Message-ID: <e209696b-8d1d-011a-31b7-fb9fdb87967b@apache.org>
Date: Wed, 16 Sep 2026 15:24:23 +0000
From: Volodymyr Siedlecki <volosied@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68536: Apache MyFaces: Server-Side Request Forgery / Local File Inclusion Vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache MyFaces (org.apache.myfaces.core:myfaces-impl) 2.2.*
- Apache MyFaces (org.apache.myfaces.core:myfaces-impl) 2.3.*
- Apache MyFaces (org.apache.myfaces.core:myfaces-impl) 3.0.*
- Apache MyFaces (org.apache.myfaces.core:myfaces-impl) 4.0.*
- Apache MyFaces (org.apache.myfaces.core:myfaces-impl) 4.1.*
- Apache MyFaces (org.apache.myfaces.core:myfaces-impl) 2.3-next-*

Description:

Server-Side Request Forgery / Local File Inclusion in Apache MyFace Core.

Older unsupported versions may also be affected. 

Users are recommended to upgrade to versions 2.3.12, 2.3-next-M9, 3.0.4, 4.0.4, or 4.1.4, which fix this issue.

References:

https://lists.apache.org/thread/4kwh2dys1sdcm3o4pbk41t2lt9or72qq
https://myfaces.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68536

