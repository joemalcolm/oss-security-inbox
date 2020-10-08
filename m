X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/10/08/4
Message-ID: <957319a25dba4efdb7523141231a6f35385ca72d.camel@apache.org>
Date: Thu, 08 Oct 2020 12:56:47 +0200
From: Oleg Kalnichevski <olegk@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-13956] Apache HttpClient incorrect handling of malformed URI authority component
Content-Type: text/plain; charset=utf-8

CVE-2020-13956: Apache HttpClient incorrect handling of malformed
authority component in request URIs

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache HttpClient 4.5.12 and prior 
Apache HttpClient 5.0.2 and prior

Description:

Apache HttpClient versions prior to version 4.5.13 and 5.0.3 can
misinterpret malformed authority component in request URIs passed to
the library as java.net.URI object and pick the wrong target host for
request execution.  

Mitigation:

As of release 4.5.13 and 5.0.3 HttpClient will reject URIs with
ambiguous malformed authority component as invalid. Users of HttpClient
are advised to upgrade to version 4.5.13 or 5.0.3 and sanitize request
URIs when using java.net.URI as input.

Credit:
This issue was discovered and reported by Priyank Nigam

