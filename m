X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/15/4
Message-ID: <a177ab3b-4b58-c2a5-bccc-f3d549bd09e0@apache.org>
Date: Fri, 15 Dec 2023 10:59:40 +0000
From: Huajie Wang <benjobs@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-30867: Apache StreamPark (incubating): Authenticated system users could trigger SQL injection vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache StreamPark (incubating) 2.0.0 before 2.1.2

Description:

In the Streampark platform, when users log in to the system and use certain features, some pages provide a name-based fuzzy search, such as job names, role names, etc. The sql syntax :select * from table where jobName like '%jobName%'. However, the jobName field may receive illegal parameters, leading to SQL injection. This could potentially result in information leakage.

Mitigation:

Users are recommended to upgrade to version 2.1.2, which fixes the issue.

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-30867

