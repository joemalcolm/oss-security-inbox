X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/10
Message-ID: <faccea92-9894-b0f7-8369-8b79b3f42029@apache.org>
Date: Tue, 24 Nov 2026 09:48:03 +0000
From: Jürg Billeter <juergbi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111600: Apache BuildStream: symlink following via plugin API 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache BuildStream through 2.8.1

Description:

UNIX symbolic link (symlink) following vulnerability in Apache BuildStream allows source plugins to inadvertently read or write files on the host, with the privileges of the user running BuildStream, via symlinks from malicious or compromised source archives or respositories, as part of source fetching.

The impact of this issue is mitigated by:

  *  BuildStream projects should only use trusted sources in their elements as otherwise the build output can also not be trusted
  *  None of the source plugins in the buildstream, buildstream-plugins or buildstream-plugins-community repositories use the vulnerable `open_file` method


This issue affects Apache BuildStream: through 2.8.1.

Users are recommended to upgrade to version 2.8.2, which fixes the issue.

Credit:

CyberLeo (reporter)

References:

https://buildstream.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-111600

