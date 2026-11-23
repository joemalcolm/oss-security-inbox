X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/38
Message-ID: <CAO85k6X4vMvFOwZ+EV28GvYCtuOx8HjVzQBM=yQ8VOfNJ-QhHA@mail.gmail.com>
Date: Mon, 23 Nov 2026 14:31:20 -0800
From: xiangfu@...che.org
To: oss-security@...ts.openwall.com
Subject: CVE-2026-134858: Apache Pinot: Controller local file disclosure during URI ingestion
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Pinot 0.7.1 before 1.6.0

Description:

In Apache Pinot 0.7.1 through 1.5.1, a caller who can submit URI
ingestion jobs can select local files readable by the controller
process. If the file can be ingested using the destination table’s
schema and input format, users with query access to that table can
read its contents.

Upgrade to Apache Pinot 1.6.0 and keep
controller.ingestFromURI.allowLocalFileSystem at its default value of
false on every controller. Until you can upgrade, block the URI
ingestion endpoint if it is unused or restrict it to trusted
operators.

This issue is being tracked as ZDI-CAN-28625.

Credit:

pl4tyz working with TrendAI Zero Day Initiative (reporter)

References:

https://github.com/apache/pinot/pull/18660
https://github.com/apache/pinot/pull/19238
https://pinot.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-134858
