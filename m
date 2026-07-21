X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/3
Message-ID: <fd607393-cd18-0e25-e06f-1dc5a3360c71@apache.org>
Date: Tue, 21 Jul 2026 10:49:36 +0000
From: Chaokun Yang <chaokunyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-60080: Apache Fory: Rust MetaString heap use-after-free 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Fory (fory-core) 0.13.0 through 1.3.0

Description:

Use After Free vulnerability in the Rust deserialization logic of Apache Fory. This issue affects Apache Fory from 0.13.0 through 1.3.0.

 A crafted Fory payload could cause undefined behavior, process crash, or potential memory disclosure.

Users are recommended to upgrade to version 1.4.0, which fixes the issue.

Credit:

Nguyen Van Hiep (@hypnguyen1209) from MBBank (reporter)

References:

https://fory.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-60080

