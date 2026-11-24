X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/9
Message-ID: <d00523bf-30e8-5487-d3d8-644a5a50d4ed@apache.org>
Date: Tue, 24 Nov 2026 09:47:13 +0000
From: Jürg Billeter <juergbi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-104813: Apache BuildStream: path traversal via unvalidated CAS Directory 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache BuildStream through 2.8.1

Description:

Improper limitation of a pathname to a restricted directory ('path traversal') vulnerability in Apache BuildStream allows malicious or compromised artifact or execution servers to write files on the host, with the privileges of the user running BuildStream, as part of `bst artifact checkout`.

The impact of this issue is mitigated by:

  *  BuildStream projects should only use trusted servers for remote cache and remote execution as otherwise the build output can also not be trusted


This issue affects Apache BuildStream: through 2.8.1.
Users are recommended to upgrade to version 2.8.2, which fixes the issue.

Credit:

MopMonk AI (finder)

References:

https://buildstream.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-104813

