X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/21/5
Message-ID: <5627ee07-06b9-69d4-0556-a1e65699008e@apache.org>
Date: Thu, 21 Dec 2023 10:57:26 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-51656: Apache IoTDB: Unsafe deserialize map in Sync Tool 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache IoTDB 0.13.0 through 0.13.4

Description:

Deserialization of Untrusted Data vulnerability in Apache IoTDB.This issue affects Apache IoTDB: from 0.13.0 through 0.13.4.

Users are recommended to upgrade to version 1.2.2, which fixes the issue.

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-51656

