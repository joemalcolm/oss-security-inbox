X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/2
Message-ID: <d0c654f8-a424-50ce-045b-6288ee07632c@apache.org>
Date: Sun, 05 Jul 2026 12:07:08 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40047: Apache Camel: Camel-Docling: Insufficient validation of custom CLI arguments enables argument injection and path traversal in DoclingProducer 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-docling) 4.15.0 before 4.18.3

Description:

Improper Neutralization of Argument Delimiters in a Command ('Argument Injection') vulnerability in Apache Camel Docling component.

The camel-docling component invokes the external `docling` command-line tool by assembling an argument list in DoclingProducer and executing it through java.lang.ProcessBuilder. Custom CLI arguments supplied through the `CamelDoclingCustomArguments` exchange header (a List<String>) were appended to that argument list with insufficient validation: the original implementation relied on a denylist of disallowed flags and only rejected path values that contained a literal `../` sequence. As a result, a Camel route that forwards externally-influenced data into the `CamelDoclingCustomArguments` header (or into the path-bearing headers used to build the invocation) could cause the producer to pass unrecognized or unintended `docling` CLI flags to the subprocess, and could supply path-like argument values that resolved outside the intended directory through traversal sequences not caught by the literal `../` check. Because Camel itself builds the `docling` invocation from these values, the component is responsible for constraining them, and the weak validation allowed CLI-argument injection and directory traversal in the arguments passed to the external tool. The invocation uses the list-based form of ProcessBuilder, so a shell does not interpret the argument values; OS command injection through shell metacharacters was not possible, and the metacharacter rejection added by the fix is defense-in-depth.
This issue affects Apache Camel: from 4.15.0 before 4.18.3.

Users are recommended to upgrade to a release that contains the CAMEL-23212 fix. On the mainline the fix is included from Apache Camel 4.19.0 (and later releases such as 4.20.0). For users on the 4.18.x LTS releases stream, upgrade to 4.18.3. The fix replaces the denylist with a strict allowlist of recognized `docling` CLI flags (rejecting any unrecognized flag, and rejecting producer-managed flags such as the output-directory flags), defensively rejects shell metacharacters in argument values, and normalizes path-like values with Path.normalize() before validating them so that traversal sequences which bypass a literal `../` check are detected. As defence in depth, route authors should avoid mapping untrusted message content into the `CamelDoclingCustomArguments` header and the path-bearing headers, and should strip Camel-internal headers from messages that arrive from untrusted producers.

Credit:

Andrea Cosentino from Apache Software Foundation (finder)
Andrea Cosentino from Apache Software Foundation (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-40047.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40047

