X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/03/12
Message-ID: <e0ab25a1-34ee-1eeb-9651-99764875283f@apache.org>
Date: Mon, 03 Aug 2026 19:48:39 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68980: Apache NiFi: Authorization Bypass for Parameter Context Asset Deletion 
Content-Type: text/plain; charset=utf-8

Severity: Low 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 2.0.0 through 2.10.0

Description:

Apache NiFi 2.0.0 through 2.10.0 support creating, reading, and deleting Assets associated with Parameter Contexts through the REST API. The framework authorizes asset deletion against the owning Parameter Context using the supplied Parameter Context Identifier and Asset Identifier. The framework performed authorized based on the supplied Parameter Context Identifier without verifying the requested Identifier against the stored Identifier. Apache NiFi installations that do not implement different levels of authorization across Parameter Contexts are not subject to this vulnerability, because the framework enforces write permissions as the security boundary. Upgrading to Apache NiFi 2.11.0 is the recommended mitigation, which verifies Parameter Context ownership of the requested Asset before deletion using the same strategy applied to Asset read operations.

This issue is being tracked as NIFI-16154 

Credit:

mak3bread (Minseong Kim) (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68980
https://issues.apache.org/jira/browse/NIFI-16154

Timeline:

2026-07-27: reported

