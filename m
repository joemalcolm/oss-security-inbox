X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/23
Message-ID: <f0f9cb64-1b80-d3fc-cb51-9b2d8c1dd684@apache.org>
Date: Tue, 08 Sep 2026 20:54:57 +0000
From: Michael Smith <michaelsmith@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57866: Apache Impala: Secrets Exfiltration via SSRF 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Impala 4.4.0 through 4.5.1

Description:

Server side request forgery in Apache Impala versions 4.4.x and 4.5.x.  Authenticated Impala users with permissions to execute the ai_generate_text() function can exfiltrate secrets provided by the credential providers configured in the `hadoop.security.credential.provider.path` property of `core-site.xml`. The secret's key must be known to the user.

Credit:

Andrey Rukin (Arenadata) (reporter)

References:

https://impala.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57866

