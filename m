X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/17/3
Message-ID: <8893ea57-5817-bce5-f37e-e13d77a6f691@apache.org>
Date: Thu, 17 Sep 2026 15:09:49 +0000
From: Jean-Baptiste Onofré <jbonofre@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92230: Apache Karaf: Improper release of ClassLoader references via static ThreadLocal caching 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Karaf before 4.4.11

Description:

Apache Karaf's XmlUtils cached XML parser/transformer factories in static ThreadLocal fields on long-lived container threads. Because a ThreadLocal value outlives the OSGi bundle that created it, repeated bundle or feature install, update, or refresh operations can leave successive bundle ClassLoader's pinned in memory and unreachable for garbage collection, leading to unbounded Metaspace growth and eventual denial of service of the Karaf instance.

This issue is being tracked as https://github.com/apache/karaf/issues/2278 

Credit:

Baoquan Cui & Yucheng Qiu (reporter)

References:

https://karaf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92230
https://issues.apache.org/jira/browse/https://github.com/apache/karaf/issues/2278

