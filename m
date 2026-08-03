X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/03/11
Message-ID: <70530039-4ae3-fdd7-2957-fbe206a9efbf@apache.org>
Date: Mon, 03 Aug 2026 19:46:59 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-62354: Apache NiFi: Incorrect Authorization for Parameter Context Validation Requests 
Content-Type: text/plain; charset=utf-8

Severity: High 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 1.10.0 through 2.10.0

Description:

Authorization handling for Parameter Context validation requests in Apache NiFi 1.10.0 through 2.10.0 allows clients with read access to submit proposed Parameter values. The proposed values override current configuration, enabling users with read access to invoke predefined component validation methods with alternative settings. Apache NiFi installations that do not implement different levels of authorization for viewing and modifying Parameter Context configuration are not subject to this vulnerability. Upgrading to Apache NiFi 2.11.0 is the recommended mitigation, requiring write access to submit Parameter Context validation requests.

This issue is being tracked as NIFI-16112 

Credit:

Nguyen Van Hiep from MBBank (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-62354
https://issues.apache.org/jira/browse/NIFI-16112

Timeline:

2026-07-08: reported

