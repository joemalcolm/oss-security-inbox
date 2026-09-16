X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/9
Message-ID: <b35c8d16-f16a-2b5b-cf07-99a2a9391336@apache.org>
Date: Wed, 16 Sep 2026 14:07:31 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82561: Apache NiFi: Missing Authorization for Components Referenced in Flow Update Methods 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 1.5.0 through 2.11.0

Description:

Apache NiFi 1.5.0 through 2.11.0 provide REST API methods that replace the entire contents of a Process Group using a client-supplied flow definition, covering Process Group flow replacement together with versioned flow update and rebase operations. Framework authorization for these methods was limited to read and write privileges on the Process Group itself, unlike the corresponding asynchronous update request methods, which also authorize the components encapsulated in the Process Group along with referenced Controller Services, Parameter Contexts, and Parameter Providers. As a result of the missing authorization, an authenticated user with write access to a Process Group could supply a flow definition that modifies or removes components in descendant Process Groups protected by more restrictive access policies, and could bind components to Controller Services and Parameter Contexts without authorization for those referenced components. Existing verification checks limited the impact to stopped components, and the issue applies only to deployments that use component-level authorization policies, because the framework enforces write permissions as the security boundary. Upgrading to Apache NiFi 2.12.0 is the recommended mitigation, which applies consistent reference resolution and component authorization across Process Group replacement and versioned flow update methods

This issue is being tracked as NIFI-16263 

Credit:

n0mi1k (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82561
https://issues.apache.org/jira/browse/NIFI-16263

Timeline:

2026-08-06: reported

