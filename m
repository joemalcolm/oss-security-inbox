X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/11
Message-ID: <f877c396-5beb-5a08-501e-67e7e80042c4@apache.org>
Date: Mon, 06 Jul 2026 07:07:31 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-24013: Apache IoTDB: Authentication Bypass via Forged SessionID in Thrift RPC 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache IoTDB 1.3.3 before 2.0.8

Description:

Authentication Bypass by Spoofing vulnerability in Apache IoTDB.
Certain Thrift RPC query handlers lack strict validation of the sessionId
parameter. An attacker can construct requests with a forged sessionId and,
without performing openSession authentication, receive valid query results.
This allows authentication bypass and unauthorized reading of time-series
data.


This issue affects Apache IoTDB: from 1.3.3 before 2.0.8.

Users are recommended to upgrade to version 2.0.8, which fixes the issue.

Credit:

Yan Nan (Detecon Security Lab) (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-24013

