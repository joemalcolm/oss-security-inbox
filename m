X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/30/2
Message-ID: <20b7e5b0-8c9d-fdf0-8346-6ccd5b721b29@apache.org>
Date: Fri, 30 Dec 2022 07:15:23 +0000
From: Xiaoxiang Yu <xxyu@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-44621: Apache Kylin: Command injection by Diagnosis Controller 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

Diagnosis Controller miss parameter validation, so user may attacked by command injection via HTTP Request.

Work Arounds:

Users of Kylin 2.x & Kylin 3.x & 4.x should upgrade to 4.0.3 or apply patch  https://github.com/apache/kylin/pull/2011 https://github.com/apache/kylin/pull/2011

Credit:

Messy God <godimessy@...il.com> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-44621

