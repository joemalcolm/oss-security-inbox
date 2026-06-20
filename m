X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/20/6
Message-ID: <27fe12f1-e0e6-da69-1dd5-263a2806a47a@apache.org>
Date: Sat, 20 Jun 2026 16:57:13 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44914: Apache NiFi: Missing Authorization of Restricted Permissions when Replacing Flow Contents 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 1.12.0 through 2.9.0

Description:

Apache NiFi 1.12.0 through 2.9.0 are missing authorization when replacing Process Groups that include extension components with specific Required Permissions based on the Restricted annotation. The Restricted annotation indicates additional privileges required, but framework authorization did not check restricted status when handling requests to replace Process Groups. The missing authorization permits a user with general write access to add components with Restricted status. Apache NiFi installations that do not implement specific authorization for Restricted components are not subject to this vulnerability because the framework enforces write permissions as the security boundary. Upgrading to Apache NiFi 2.9.0 is the recommended mitigation, which removes the implementation of Restricted status authorization from the framework.

This issue is being tracked as NIFI-15845 

Credit:

Roberto Suggi Liverani from NATO Cyber Security Centre (NCSC) (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44914
https://issues.apache.org/jira/browse/NIFI-15845

Timeline:

2026-04-27: reported

