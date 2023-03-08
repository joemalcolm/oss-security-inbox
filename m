X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/08/1
Message-ID: <488bc85b-f639-52d5-0ae4-076d3002a51d@apache.org>
Date: Wed, 08 Mar 2023 08:46:26 +0000
From: Albumen Kevin <albumenj@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-23638: Apache Dubbo Deserialization Vulnerability Gadgets Bypass 
Content-Type: text/plain; charset=utf-8

Description:

A deserialization vulnerability existed when dubbo generic invoke, which could lead to malicious code execution. 

This issue affects Apache Dubbo 2.7.x version 2.7.21 and prior versions; Apache Dubbo 3.0.x version 3.0.13 and prior versions; Apache Dubbo 3.1.x version 3.1.5 and prior versions.

Credit:

yemoli、R1ckyZ、Koishi、cxc (reporter)

References:

https://dubbo.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-23638

