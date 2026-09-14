X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/4
Message-ID: <d6d86736-c7c4-8bfb-4511-ba66a391c54d@apache.org>
Date: Mon, 14 Sep 2026 08:21:44 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73178: Apache Syncope: JWT Access Token takeover 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 4.1.0-M0 through 4.1.2

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in Apache Syncope.

An administrator with adequate entitlements can get access via REST to the list of existing Access Tokens, including their signed JWT body.
These values can be then used to perform further REST requests, impersonating users with higher administration entitlements.





This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.

Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73178

