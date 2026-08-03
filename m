X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/03/13
Message-ID: <a21b28da-8be0-1435-adf0-41b2e6820619@apache.org>
Date: Mon, 03 Aug 2026 19:50:12 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68981: Apache NiFi: Uncontrolled Resource Consumption through Decompression of HTTP Requests 
Content-Type: text/plain; charset=utf-8

Severity: High 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 1.5.0 through 2.10.0

Description:

Apache NiFi 1.5.0 through 2.10.0 support gzip-encoded HTTP requests for the application REST API using a Jersey encoding filter. The framework enforced a configurable maximum request size on the compressed payload rather than the decompressed output, allowing a malicious client to send crafted requests that could consume excessive amounts of memory. Upgrading to Apache NiFi 2.11.0 is the recommended mitigation, which relocates response compression to Jetty Server and disables decompression of gzip-encoded HTTP requests.

This issue is being tracked as NIFI-16152 

Credit:

mak3bread (Minseong Kim) (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68981
https://issues.apache.org/jira/browse/NIFI-16152

Timeline:

2026-07-28: reported

