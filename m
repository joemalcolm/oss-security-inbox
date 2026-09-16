X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/8
Message-ID: <e43ca47b-6d9d-d6b6-625c-878bbbb6d4e9@apache.org>
Date: Wed, 16 Sep 2026 14:00:51 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-81866: Apache NiFi: Missing Authorization for Assets and Secrets Referenced by Connector Configuration 
Content-Type: text/plain; charset=utf-8

Severity: Low 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 2.9.0 through 2.11.0

Description:

Apache NiFi 2.9.0 through 2.11.0 provide Connector configuration update and verification REST API methods that do not enforce authorization checking on Assets and Secrets referenced in proposed configuration. Updating or verifying a Connector configuration step can apply Asset and Secret references, but framework authorization was limited to write privileges on the Connector itself. As a result of the missing authorization, an authenticated user authorized to modify a Connector, but not authorized to read a referenced Parameter Provider, could apply Secret values backed by that Parameter Provider. The same methods also accepted Asset identifiers without verifying that the Asset belonged to the Connector being configured. Apache NiFi installations that do not implement different levels of authorization across Connectors and Parameter Providers are not subject to this vulnerability, because the framework enforces write permissions on the Connector as the security boundary. Upgrading to Apache NiFi 2.12.0 is the recommended mitigation, which authorizes read access to referenced Parameter Providers and verifies Connector ownership of referenced Assets during configuration update and verification.

This issue is being tracked as NIFI-16205 

Credit:

h1ei1 (finder)
Arpit Jain (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-81866
https://issues.apache.org/jira/browse/NIFI-16205

Timeline:

2026-08-05: reported

