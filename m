X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/10/1
Message-ID: <f61029a1-f4dc-8fb3-a9c8-444901495532@apache.org>
Date: Mon, 10 Jul 2023 13:45:22 +0000
From: Brahma Reddy Battula <brahma@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-42009: Apache Ambari: A malicious authenticated user can remotely execute arbitrary code in the context of the application. 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Ambari 2.7.0 through 2.7.6

Description:

SpringEL injection in the server agent in Apache Ambari version 2.7.0 to 2.7.6 allows a malicious authenticated user to execute arbitrary code remotely. Users are recommended to upgrade to 2.7.7.

Credit:

Jecki Go (jecgo@...a.com) (finder)

References:

https://ambari.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-42009

