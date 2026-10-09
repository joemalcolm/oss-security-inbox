X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/12
Message-ID: <e571c521-8c79-821b-fbb7-1eca8fbedaa3@apache.org>
Date: Fri, 09 Oct 2026 10:06:03 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-107937: Apache CXF: The attachment header size and count limits can be bypassed, which allows denial of service through memory exhaustion. 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF 4.2.0 before 4.2.4
- Apache CXF 4.0.0 before 4.1.9
- Apache CXF before 3.6.13

Description:

In Apache CXF, the parser for multipart/MTOM attachment part headers did not fully enforce the configured attachment-max-header-size (default 300 characters) and attachment-headers-max-count (default 500) limits. The size limit was applied only to each physical line, not to a header value built from continuation lines or to the combined values of a repeated header. The count limit was checked against the number of distinct header names, not the total number of header lines. A remote, unauthenticated attacker could send a multipart request with very large folded or repeated part headers. The server would then allocate memory without bound, causing a denial of service. 
Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects and independently by Mike Read (github.com/Michael-JRead) (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-107937

