X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/19/1
Message-ID: <da06c675-d869-64bc-0f77-e6ae5a962195@apache.org>
Date: Tue, 19 Dec 2023 09:14:12 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-46104: Apache Superset: Allows for uncontrolled resource consumption via a ZIP bomb 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset before 2.1.3
- Apache Superset 3.0.0 before 3.0.1

Description:

Uncontrolled resource consumption can be triggered by authenticated attacker that uploads a malicious ZIP to import database, dashboards or datasets.  
This vulnerability exists in Apache Superset versions up to and including 2.1.2 and versions 3.0.0, 3.0.1.

Credit:

Dor Konis – GE Vernova (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-46104

