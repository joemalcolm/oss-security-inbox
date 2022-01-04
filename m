X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/04/3
Message-ID: <f4521c81-26b9-35d0-a5b4-f25b1a766d73@apache.org>
Date: Tue, 04 Jan 2022 05:55:31 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-40111: Apache James IMAP parsing Denial Of Service 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

While fuzzing with Jazzer the IMAP parsing stack we discover that crafted APPEND and STATUS IMAP command could be used to trigger infinite loops resulting in expensive CPU computations and OutOfMemory exceptions.
This can be used for a Denial Of Service attack. The IMAP user needs to be authenticated to exploit this vulnerability.  This affected Apache James prior to version 3.6.1.

This issue is being tracked as JAMES-3634

Mitigation:

This vulnerability had been patched in Apache James 3.6.1 and higher. We recommend the upgrade.

Credit:

The Apache James PMC would like to thanks Benoit TELLIER for the report.

