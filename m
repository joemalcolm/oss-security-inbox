X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/30
Message-ID: <0739fe43-8d92-a64a-080a-d4b20d6de8ff@apache.org>
Date: Mon, 09 Nov 2026 20:06:41 +0000
From: "Gary D. Gregory" <ggregory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124077: Apache Commons Codec: NUL bytes in tree entry names cause Git/SWHID identifier collisions (GitIdentifiers class) 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Commons Codec 1.22.0 before 1.23.0
- Apache Commons Codec 387120c901f4a75c3112dfdf8877dcdec7ae685d before 87f6aa2818836998528ff4b0d1ea35545a800ee5

Description:

The GitIdentifiers class in Apache Commons Codec did not reject NUL bytes in tree entry names. Because Git uses a NUL byte to mark the end of each entry name in a tree object, a crafted name could make one tree serialize to the same bytes as a different tree. Two different directory trees could then receive the same Git tree identifier or SWHID.



The impact is limited: common file systems do not allow NUL bytes in file names, so trees built by walking a file system are not affected. Only applications that build trees from names supplied by other sources, such as entries of archive formats that permit NUL bytes in names (e.g. ZIP) or names passed directly to the API, are exposed.



This issue affects Apache Commons Codec: from 1.22.0 before 1.23.0.



Users are recommended to upgrade to version 1.23.0, which fixes the issue.

Credit:

Claude Security (tool)
Gary D. Gregory (remediation developer)

References:

https://github.com/apache/commons-codec/commit/87f6aa2818836998528ff4b0d1ea35545a800ee5.patch
https://commons.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-124077

