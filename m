X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/03/10
Message-ID: <f0b27b72-20a3-8f76-a264-0ff829b3b6b5@apache.org>
Date: Mon, 03 Aug 2026 19:44:58 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68979: Apache NiFi: Missing Authorization for Components Referenced by Parameter Context Updates 
Content-Type: text/plain; charset=utf-8

Severity: Medium 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 1.10.0 through 2.10.0

Description:

Apache NiFI 1.10.0 through 2.10.0 provide a Parameter Context update REST API method that does not enforce authorization checking on components referencing Parameter values. Updating a Parameter Context can change parameter values that affect referencing components, but framework authorization was limited to read and write privileges on the Parameter Context itself. As a result of the missing authorization, an authenticated user authorized to modify a Parameter Context, but not authorized on referencing components, could alter Parameter values affecting those components. In deployments where a Parameter value contains executable scripting content, updating a Parameter can result in code execution during automatic component validation, without starting the referencing component. The impact was limited to stopped components by existing verification checks, and the issue applies only to deployments that use component-level authorization policies. Upgrading to Apache NiFi 2.11.0 is the recommended mitigation, which aligns the Parameter Context update method authorization with other methods, adding authorization checking on affected components.

This issue is being tracked as NIFI-16148 

Credit:

D0HY30N (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68979
https://issues.apache.org/jira/browse/NIFI-16148

Timeline:

2026-07-22: reported

