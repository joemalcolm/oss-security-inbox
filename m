X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/9
Message-ID: <86591bb1-57ba-8a53-9041-b704745ec496@apache.org>
Date: Wed, 23 Sep 2026 06:03:20 +0000
From: Jürg Billeter <juergbi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82331: Apache BuildStream: tar source extraction escape 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache BuildStream (buildstream) through 2.8.0
- Apache BuildStream (buildstream) 2.8.1 unaffected

Description:

Improper link resolution before file access ('link following') vulnerability in the `tar` source plugin of Apache BuildStream running on Python < 3.12 allows malicious source tarballs to write files on the host, with the privileges of the user running BuildStream, via symlinks as part of source fetching.
The impact of this issue is mitigated by:

* BuildStream projects should only use trusted sources in their elements as otherwise the build output can also not be trusted
* Tracking a source tarball pins its SHA256 hash, which prevents MITM attacks of users that are fetching an already tracked project
* When running on Python >= 3.12, BuildStream >= 2.3.0 already makes use of the Python `tarfile` filter functionality, which blocks the symlink escape

Users are recommended to upgrade to version 2.8.1, which fixes this issue.

Credit:

Gjoko Krstic of Zero Science Lab (finder)

References:

https://buildstream.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-82331

