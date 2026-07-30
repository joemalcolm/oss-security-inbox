X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/2
Message-ID: <fb7b9277-3133-c96c-29f9-b810e7dc7ecb@apache.org>
Date: Thu, 30 Jul 2026 01:37:33 +0000
From: Jongyoul Lee <jongyoul@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44615: Apache Zeppelin: Path traversal in NotebookRepo note and folder path composition 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Zeppelin 0.9.0 before 0.12.1

Description:

Path traversal vulnerability in Apache Zeppelin. When FileSystemNotebookRepo is configured, an authenticated attacker with permission to rename a note, or access to folder operations, could supply traversal segments in note or folder paths. Zeppelin composed these values into filesystem paths using the server's filesystem or Hadoop identity without ensuring that the result remained under the configured notebook directory. This could allow notebook files or directories to be moved, written, or deleted outside the notebook root. This issue affects Apache Zeppelin versions 0.9.0 through 0.12.0. Users are recommended to upgrade to version 0.12.1, which fixes this issue.

Credit:

Green-m (finder)

References:

https://github.com/apache/zeppelin/pull/5227
https://github.com/apache/zeppelin/pull/5248
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44615

