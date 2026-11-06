X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/13
Message-ID: <a2f8193c-bdb8-6aa1-968f-fd7429685ab0@apache.org>
Date: Fri, 06 Nov 2026 11:12:51 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-66621: Apache James: SASL OAUTHBEARER do not validate aud in JWT payload if misconfigred 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache James 3.9.0 before 3.9.1

Description:

Apache James SASL OAuthBearer/XOAUTH2 prior versions 3.9.1 fails to validate correctly AUD claim of JWT payloads when introspection is not configured.

This allows an attacker with valid credentials to access the mail server even if they are not authorized to do so.

We recommend users to upgrade to non vulnerable version that forces explicit configuration of aud claims and forces introspection.

Credit:

The Apache James PMC would like to thanks Felix Auringer for this report (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-66621

