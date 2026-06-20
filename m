X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/20/4
Message-ID: <8634d37e-c37d-f677-5a82-f97115fd1d35@apache.org>
Date: Sat, 20 Jun 2026 16:52:04 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44911: Apache NiFi: Incorrect Authorization for Configuration Verification Requests 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 1.15.0 through 2.9.0

Description:

Authorization handling for component configuration verification requests in Apache NiFi 1.15.0 through 2.9.0 allows clients with read access to submit proposed configuration properties. The proposed properties override current configuration, enabling users with read access to invoke predefined verification methods with alternative settings. Apache NiFi installations that do not implement different levels of authorization for viewing and modifying component configuration are not subject to this vulnerability. Upgrading to Apache NiFi 2.10.0 is the recommended mitigation, requiring write access to submit configuration verification requests.

This issue is being tracked as NIFI-15875 

Credit:

Kaixuan Li from Nanyang Technological University (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44911
https://issues.apache.org/jira/browse/NIFI-15875

Timeline:

2026-04-21: reported

