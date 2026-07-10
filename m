X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/10/8
Message-ID: <ad1f0921-cbda-9869-9eaa-343f4536ca84@apache.org>
Date: Fri, 10 Jul 2026 06:35:33 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40454: Apache IoTDB C++ client: Out-of-bounds reads in C++ client TsBlock deserializer crash client process on malformed server data 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache IoTDB C++ client (client-cpp) 1.3.5 before 1.3.8
- Apache IoTDB C++ client (client-cpp) 2.0.5 before 2.0.10

Description:

Out-of-bounds Read, Improper Input Validation vulnerability in Apache IoTDB C++ client.
Out-of-bounds reads in IoTDB C++ client TsBlock deserializer crash client
process on malformed server data.


This issue affects Apache IoTDB C++ client: from 1.3.5 before 1.3.8, from 2.0.5 before 2.0.10.

Users are recommended to upgrade to version 2.0.10, which fixes the issue.

Credit:

bugbunny.ai (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-40454

