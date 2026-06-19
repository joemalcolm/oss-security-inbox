X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/14
Message-ID: <83e46b1c-e4cc-a3cd-11cd-795d2a371b85@apache.org>
Date: Fri, 19 Jun 2026 06:56:59 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49871: Apache APISIX: cas-auth login CSRF / session injection issue 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 3.0.0 through 3.16.0

Description:

Cross-Site Request Forgery (CSRF) vulnerability in the cas-auth plugin under default configurations.

This defect allows a remote attacker that manages to send a victim to a webpage controlled by them can cause the victim's browser to become authenticated as a different identity.

Actions the victim takes upstream are then attributed to attackers identity.


This issue affects Apache APISIX: from 3.0.0 through 3.16.0.

Users are recommended to upgrade to version 3.17.0, which fixes the issue.

Credit:

lokerxxx (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-49871

