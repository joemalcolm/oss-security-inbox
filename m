X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/10
Message-ID: <0e2e09c8-7903-e8f3-95f5-7b29ddb08c55@apache.org>
Date: Wed, 16 Sep 2026 14:11:23 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86089: Apache NiFi: Missing Process Group Authorization for Connector Migration 
Content-Type: text/plain; charset=utf-8

Severity: Low 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 2.11.0

Description:

Apache NiFi 2.11.0 supports migrating the contents of a version-controlled Process Group into a Connector using REST API methods that list eligible migration sources and submit migration requests. The framework authorized both methods against the target Connector alone, without evaluating access to the Process Groups involved. The absence of Process Group authorization allowed an authenticated user with read access to a Connector to enumerate the identifiers, names, and flow registry details of version-controlled Process Groups outside the scope of granted read policies. It also allowed a user with write access to a Connector to migrate a Process Group without write access to that Process Group, copying the flow definition, referenced assets, and component state into the Connector, and leaving the source Process Group disabled and renamed. Migration excludes sensitive property values and requires the source Process Group to be stopped with empty queues, which limits the scope of exposure. Apache NiFi installations that do not implement component-level authorization policies for Process Groups are not subject to this vulnerability, because the framework enforces Connector write permissions as the security boundary. Upgrading to Apache NiFi 2.12.0 is the recommended mitigation, which filters migration sources to Process Groups the requesting user is authorized to read, and requires write access to the source Process Group when submitting a migration request.

This issue is being tracked as NIFI-16272 

Credit:

ZsZsec (finder)
Alpesh Bhagwatkar (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86089
https://issues.apache.org/jira/browse/NIFI-16272

Timeline:

2026-08-05: reported

