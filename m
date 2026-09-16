X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/7
Message-ID: <786ca2f3-e972-84c9-bd86-10610073aca2@apache.org>
Date: Wed, 16 Sep 2026 13:58:53 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-70469: Apache NiFi: Improper Handling of Case Sensitivity for Content-Encoding in HTTP Requests 
Content-Type: text/plain; charset=utf-8

Severity: High 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-jetty) 2.11.0

Description:

Apache NiFi 2.11.0 disabled support for gzip-encoded HTTP requests for the application REST API and rejected requests that included the standard Content-Encoding header indicating gzip encoding. The framework enforcement filter did not check multiple instances of the Content-Encoding header and did not reject non-standard identifiers for gzip encoding, allowing a malicious client to send crafted requests that could consume excessive amounts of memory. Upgrading to Apache NiFi 2.12.0 is the recommended mitigation, which disables decompression of gzip-encoded HTTP requests regardless of header number or encoding identifiers.

This issue is being tracked as NIFI-16170 

Credit:

mak3bread (Minseong Kim) (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-70469
https://issues.apache.org/jira/browse/NIFI-16170

Timeline:

2026-08-04: reported

