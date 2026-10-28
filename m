X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/7
Message-ID: <CAMVt_Aw3vPSeE7uPGUTEeSM-_kdb95=oUjk++Z2wAQBU0PtHQw@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:45:07 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-83525: Apache Kafka: Incorrect boolean operator in FetchSnapshot RPC handler allows authenticated network clients to crash the KRaft controller via a malformed request.
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Kafka 2.8.0 before 4.2.2
- Apache Kafka 4.3.0 before 4.3.2

Description:

Incorrect operator (CWE-480) in the FetchSnapshot RPC handler
in Apache Kafka from 2.8.0 before 4.2.2, and from 4.3.0 before 4.3.2
on all platforms allows an authenticated attacker with
CLUSTER_ACTION privilege to cause a denial of service
(controller process termination) via a crafted
FetchSnapshotRequest with an empty topics array or a topic
with no partitions.

Users are recommended to upgrade to version 4.2.2, 4.3.2, or
4.4.0, which fix this issue. Users on unsupported branches
(4.1.x and earlier) should upgrade to 4.2.2 or later.

Credit:

Mike Read (GitHub: Michael-JRead) (reporter)
Kevin Wu <kwu@...fluent.io> (remediation developer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-83525
