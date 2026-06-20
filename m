X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/20/5
Message-ID: <45ce36dc-e372-0a21-c67b-cf005aec9dfc@apache.org>
Date: Sat, 20 Jun 2026 16:52:30 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44913: Apache NiFi: Improper Escaping of Table Names in CaptureChangeMySQL 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-cdc-mysql-processors) 1.2.0 through 2.9.0

Description:

Improper escaping of database table names in the CaptureChangeMySQL Processor included with Apache NiFi 1.2.0 through 2.9.0 allows for injecting SQL commands using crafted naming. Manual quoted boundaries added in Apache NiFi 1.8.0 narrowed the scope of potential injection options, but did not cover additional strategies. Apache NiFi installations that do not use the CaptureChangeMySQL Processor are not subject to this vulnerability. Upgrading to Apache NiFi 2.10.0 is the recommended mitigation, which incorporates more robust identifier escaping.

This issue is being tracked as NIFI-15905 

Credit:

Roberto Suggi Liverani from NATO Cyber Security Centre (NCSC) (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44913
https://issues.apache.org/jira/browse/NIFI-15905

Timeline:

2026-04-27: reported

