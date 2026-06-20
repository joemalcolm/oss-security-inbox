X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/20/7
Message-ID: <23ce38f1-e365-4cac-3ba8-2dbf18a68ef5@apache.org>
Date: Sat, 20 Jun 2026 16:57:51 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54665: Apache NiFi: Missing Validation for Proxy Host Headers 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-jetty) 0.0.1 before 2.10.0

Description:

Apache NiFi 0.0.1 through 2.9.0 support building qualified URLs from one of several HTTP request headers that provide an alternative to the standard Host header without validating the values provided. Apache NiFi 1.6.0 introduced a configurable application property to restrict values provided in the HTTP Host header, but did not apply the validation to alternative Proxy and Forwarded headers. The absence of proxy host header validation allowed a client to instruct Apache NiFi web services to construct invalid qualified URLs for redirection or data references. Upgrading to Apache NiFi 2.10.0 is the recommended mitigation, which implements validation for the X-ProxyHost and X-Forwarded-Host HTTP request headers based on the nifi.web.proxy.host property. Enabling header validation requires configuring the application with HTTPS. Reverse proxy servers in front of Apache NiFi are responsible for filtering input request headers and providing allowed values to the application.

This issue is being tracked as NIFI-15953 

Credit:

Jose Rivas (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-54665
https://issues.apache.org/jira/browse/NIFI-15953

Timeline:

2026-05-18: reported

