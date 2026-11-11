X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/12/1
Message-ID: <6b54c6b3-8361-8d75-e9b2-000bbcee4c8a@apache.org>
Date: Wed, 11 Nov 2026 23:53:33 +0000
From: Robert Lazarski <robertlazarski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124023: Apache Axis2/C: Out-of-bounds read in the Guththila XML reader wrapper 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Axis2/C f2b30c159720cf63ada72f19183828533154c749 before 23110287924e79d05a5b4712298c355d1f05c606
- Apache Axis2/C through 2.0.0

Description:

Out-of-bounds Read vulnerability in the Guththila XML parser wrapper of Apache Axis2/C. On some malformed XML input the Guththila parser returned a raw input byte in place of an event code, and the AXIOM reader wrapper used that value as an index into a ten-entry lookup table without checking its range, reading heap memory past the end of the table. An unauthenticated client could trigger this by sending a crafted XML request to a server built with Guththila, the default parser, causing the request to be parsed incorrectly or, in some cases, the process to crash. The memory read is not returned to the client. This issue affects Apache Axis2/C: through 2.0.0. The fix is available in commits 23110287924e79d05a5b4712298c355d1f05c606 and f01683ec10e8fddb87279ec9351b3239021223e6 and will be included in the next release.

Credit:

Adithyan P (finder)

References:

https://github.com/apache/axis-axis2-c-core/commit/23110287924e79d05a5b4712298c355d1f05c606
https://github.com/apache/axis-axis2-c-core/commit/f01683ec10e8fddb87279ec9351b3239021223e6
https://axis.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-124023

