X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/04/7
Message-ID: <eb6516d2-82f7-481d-f2a4-f7053c05c67f@apache.org>
Date: Thu, 04 May 2023 20:59:50 +0000
From: Madhan Neethiraj <madhan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45048: Apache Ranger: code execution vulnerability in policy expressions 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Ranger 2.3.0

Description:

Authenticated users with appropriate privileges can create policies having expressions that can exploit code execution vulnerability. This issue affects Apache Ranger: 2.3.0.

Credit:

g1831767442@....com (finder)

References:

https://ranger.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-45048

