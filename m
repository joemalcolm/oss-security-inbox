X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/11
Message-ID: <7ed5e33c-2a5b-2d1c-aed7-7751eea53799@apache.org>
Date: Wed, 08 Jul 2026 17:30:14 +0000
From: Junkai Xue <jxue@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57111: Apache Helix REST: Permissive CORS Configuration in REST API Allows Unrestricted Cross-Origin 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Helix REST (org.apache.helix:helix-rest) through 2.0.0

Description:

Permissive Cross-Origin Resource Sharing (CORS) in the REST API (helix-rest, org.apache.helix.rest.server.filters.CORSFilter) in Apache Helix through 2.0.0 on all platforms allows a remote attacker controlling a web page visited by an authorized user to read responses from and issue cross-origin requests to administrative REST endpoints via a cross-origin request from an arbitrary origin, since the filter unconditionally returns Access-Control-Allow-Origin: * together with Access-Control-Allow-Credentials: true and reflects arbitrary Access-Control-Request-Method / Access-Control-Request-Headers values in preflight responses. Users are recommended to upgrade to version 2.0.1, which fixes this issue.

Credit:

Aastha Aggarwal (reporter)

References:

https://helix.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57111

